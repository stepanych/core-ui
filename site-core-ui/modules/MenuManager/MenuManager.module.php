<?php
/**
 *  MenuManager
 *
 *  @author Ivan Milincic <kreativan@outlook.com>
 *  @copyright 2020 kraetivan.net
 *  @link http://www.kraetivan.net
 *  @license http://www.gnu.org/licenses/gpl.html
 *
*/

class MenuManager extends Process implements WirePageEditor {

  // for WirePageEditor
  public function getPage() {
    return $this->page;
  }

  public function init() {
    parent::init(); // always remember to call the parent init

    //
    //  Create New Menu Item
    //
    if($this->input->post->create_new) {

      $main_menu      = $this->pages->get("/system/main-menu/");
      $parent_menu    = $this->pages->get("/system/{$this->input->get->menu}/");

      $p = new Page();
      $p->template = $this->input->post->template;
      $p->parent = (!$this->input->get->menu) ? $main_menu : $parent_menu;
      $p->title = $this->input->post->title;
      $p->save();

      // activate page for all languages
      $helper = $this->modules->get("KreativanHelper");
      $helper->setMultilangPage($p);

      $this->message($p->title . " has been created.");

      $redirectUrl = $this->page->url."?menu={$this->input->get->menu}";
      $this->session->redirect($redirectUrl);

    }

  }

  /* ----------------------------------------------------------------
    Admin UI
  ------------------------------------------------------------------- */
  public function ___execute() {
    // set a new headline, replacing the one used by our page
    // this is optional as PW will auto-generate a headline
    $this->headline('Menu Manager');
    // add a breadcrumb that returns to our main page
    // this is optional as PW will auto-generate breadcrumbs
    $this->breadcrumb('./', 'Menu Manager');
    // include admin file
    return $this->modules->get("KreativanHelper")->includeAdminFile($this, "admin.php", "main");
  }

  public function ___executeNew() {
    $this->headline('New Menu item');
    $this->breadcrumb('./../', "?menu={$this->input->get->menu}");
    $this->breadcrumb('./', 'New Menu Item');
    return $this->modules->get("KreativanHelper")->includeAdminFile($this, "admin.php", "new");
  }

  public function ___executeTrash() {
    $this->headline('Menu Manager');
    $this->breadcrumb('./', 'Menu Manager');
    $this->breadcrumb('./../', 'Trash');
    return $this->modules->get("KreativanHelper")->includeAdminFile($this, "admin.php", "trash");
  }
  public function executeEdit() {
    return $this->modules->get("KreativanHelper")->adminPageEdit();
  }


  public function items() {

    $template 	    = "menu-item|menu-item-dropdown";
    $parent_tmpl    = "menu";
    $parent_id      = $this->pages->get("template=$parent_tmpl");

    $main_menu      = $this->pages->get("/system/main-menu/");
    $parent_menu    = $this->pages->get("/system/{$this->input->get->menu}/");

    // selector
    $selector	= "template=$template, include=all";
    $selector	.= ($this->input->get->status) ? ", status={$this->input->get->status}" : ", status!=trash";
    $selector   .= ($this->input->get->menu) ? ", parent=$parent_menu" : ", parent=$main_menu";

    // items
    $items 		= $this->pages->find($selector);

    return $items;

  }

  public function itemsTrash() {
    $template = "menu-item|menu-item-dropdown";
    $trashed = $this->pages->find("template=$template, status=trash");
    return $trashed;
  }


  // --------------------------------------------------------------
  //  Menu API
  // --------------------------------------------------------------

  /**
   *  Render Main Navbar Menu
   *  Need to wrap this in a
   *  @param bool $full wrap in uk-navbar? This is to use navbar-left-center-right
   *  if $full is false need to wrap it in...
   *  @example <nav class="uk-navbar-container uk-navbar" uk-navbar="boundary: body">
   */
  public function renderNavbar($full = true) {

    $menu_id        = $this->main_menu_source;
    $menu_source    = wire("pages")->get("id=$menu_id");
    $main_menu      = $menu_source->children("include=hidden, sort=sort");

    // Start
    if($full == true) {
      $html = "<nav class='uk-navbar-container uk-navbar' uk-navbar='boundary: body'>";
    } else {
      $html = "";
    }

    $html .= "<ul class='uk-navbar-nav'>";

    // Home link
    if($this->show_home == '1') {
      $class = (wire("page")->id == "1") ? 'uk-active' : '';
      $href = wire("pages")->get("/")->url;
      $title = wire("pages")->get("/")->title;
      $html .= "<li class='$class'>";
      $html .= "<a href='$href'>$title</a>";
      $html .= "</li>";
    }

    // Navbar Items
    foreach ($main_menu as $menu) $html .= $this->renderNavbarItem($menu);

    $html .= "</ul>";

    $html .= ($full == true) ? "</nav>" : "";

    return $html;

  }

  /**
   *  Render Full Mobile Menu
   *  @param string $align
   *  @param bool $v_align
   */
  public function renderMobileMenu($align = "center", $v_align = true) {

    $v_align = $v_align == true ? "uk-margin-auto-vertical" : "";

    $menu_id        = $this->mobile_menu_source;
    $menu_source    = wire("pages")->get("id=$menu_id");
    $mobile_menu    = $menu_source->children("include=hidden, sort=sort");

    // Start
    $html = "<ul class='uk-nav uk-nav-primary uk-nav-parent-icon uk-nav-$align $v_align' uk-nav>";

    // Home link
    if($this->show_home == '1') {
      $class = (wire("page")->id == "1") ? 'uk-active' : '';
      $href = wire("pages")->get("/")->url;
      $title = wire("pages")->get("/")->title;
      $html .= "<li class='$class'>";
      $html .= "<a href='$href'>$title</a>";
      $html .= "</li>";
    }

    // Menu Items
    foreach ($mobile_menu as $menu) $html .= $this->renderNavItem($menu);

    $html .= "</ul>";

    return $html;

  }

  /* ----------------------------------------------------------------
    Menu Methods
  ------------------------------------------------------------------- */
  public function linkShortCodes($link) {
    $new_link = $link;
    $shortcodes = [
      "home" => $this->pages->get("/")->httpUrl,
    ];
    foreach($shortcodes as $key => $value) $new_link = str_replace("{{".$key."}}", "$value", $link);
    return $new_link;
  }

  /**
   *  This will get link option from link_block field
   *  @param Page|Repeater $menu
   *  @return array
   */
  public function getLinkOptions($menu) {

    $home = wire("pages")->get("/");

    $link_type  = $menu->link_block->link_type;
    $page_link  = $menu->link_block->select_page;
    $link       = $menu->link_block->link;
    $link_attr  = $menu->link_block->link_attr;

    $href   = "#";
    $attr   = "";
    $class  = "";
    $span   = "";

    // Featured
    $class .= $menu->featured ? "tm-featured " : "";

    // Parent class
    $class .= ($menu->menu && $menu->menu->count) ? "uk-parent" : "";

    // link_type + href + attr
    if($link_type != "1") {
      if($link_type == "2" && !empty($page_link)) {
        $p = wire("pages")->get("id=$page_link");
        $href = $p->url;
        $class .= ($p->id == wire("page")->id || $p->id == wire("page")->rootParent->id) ? " uk-active uk-open" : "";
      } else {
        $href = $link;
        $href = $this->linkShortCodes($href);
        $attr .= ($link_attr[1]) ? " target='_blank'" : "";
        $attr .= ($link_attr[2]) ? " rel='nofollow'" : "";
        $attr .= ($link_attr[3]) ? " uk-toggle" : "";
        // scroll
        $attr .= (wire("page") == $home && $link_attr[4]) ? " uk-scroll='offset: 100'" : "";
        // if not home go to home page and scroll
        $href = (wire("page") != $home && $link_attr[4]) ? "{$home->url}{$link}" : $href;

        // if external link_type
        // compare it with current browser link
        // and add active class
        $currentUrl = $this->config->httpHost . $_SERVER['REQUEST_URI'];
        $currentUrl_http = "http://$currentUrl";
        $currentUrl_https = "https://$currentUrl";
        $class .= ($href == $currentUrl || $href == $currentUrl_http || $href == $currentUrl_https) ? " uk-active" : "";
      }
    }

    // link title attr
    $title_attr = !empty($menu->link_title) ? $menu->link_title : $menu->title;
    $attr .= " title='$title_attr'";

    /**
     *   if link_type is page, check selected page_link for access permission,
     *   if not, check "home page" for access permission, (access is granted).
     *
     *   To check if page is viewable use: <?php if($pageAccess->viewable()) : ?>
     *   Note: PAGE_LINK TEMPLATE MUST HAVE TEMPLATE FILE, if not item won't be visible
     *
     */
    $pageAccess = "";
    $pageAccess = wire("pages")->get("/");
    if($link_type == '2' && !empty($page_link)) {
      $pageAccess = wire("pages")->get("id=$page_link");
    }

    $options = [
      "pageAccess" => $pageAccess->viewable(),
      "class" => $class,
      "href" => $href,
      "attr" => $attr
    ];

    return $options;

  }

  /**
   *  This will render menu item <li>
   *  using getLinkOptions() function
   *  @param Page|Repeater $menu
   *  @return string|html
   */
  public function renderMenuItem($menu) {

    $html = false;
    $options = $this->getLinkOptions($menu);

    if($options["pageAccess"]) {
      $html = "<li class='{$options['class']}'>";
      $html .= "<a href='{$options['href']}' {$options['attr']}>{$menu->title}</a>";
      $html .= "</li>";
    }

    return $html;

  }

  /**
   *  Render dropdown
   *  @param Repeater|Page $dropdown
   *  @return string|html
   */
  public function renderDropdown($dropdown) {
    $html = "<div class='uk-navbar-dropdown'>";
    $html .= "<ul class='uk-nav uk-navbar-dropdown-nav'>";
    foreach($dropdown as $menu) $html .= $this->renderMenuItem($menu);
    $html .= "</ul></div>";
    return $html;
  }

  /**
   *  This will render navbar item <li> with dropdown
   *  using getLinkOptions() function
   *  @param Page|Repeater $menu
   *  @return string|html
   */
  public function renderNavbarItem($menu) {

    $html = false;
    $options = $this->getLinkOptions($menu);
    $dropdown = $menu->menu;

    if($options["pageAccess"]) {
      $html = "<li class='{$options['class']}'>";
      $html .= "<a href='{$options['href']}' {$options['attr']}>{$menu->title}</a>";
      if($dropdown && $dropdown->count) {
        $html .= $this->renderDropdown($dropdown);
      }
      $html .= "</li>";
    }

    return $html;

  }

  /**
   *  This will render Nav item <li> with subnav
   *  @param Page|Repeater $menu
   *  @return string|html
   */
  public function renderNavItem($menu) {
    $options = $this->getLinkOptions($menu);
    $subnav = $menu->menu;
    $html = "<li class='{$options["class"]}'>";
    $html .= "<a href='{$options['href']}' {$options['attr']}>{$menu->title}</a>";
    if($subnav && $subnav->count) {
      $html .= "<ul class='uk-nav-sub'>";
      foreach ($subnav as $item) $html .= $this->renderMenuItem($item);
      $html .= "</ul>";
    }
    $html .= "</li>";
    return $html;
  }

  /* ----------------------------------------------------------------
    Nav
  ------------------------------------------------------------------- */
  /**
   *  Render Subnav Menu
   *  @var Page $menu     menu child pages or repeater, with a link_block field
   *  @var string $align  left/right/center
   *  @var string $class  uikit subnav class
   *
   */
  public function renderSubnav($menu, $align = "center", $class = "uk-subnav-divider") {

    $html = "<ul class='uk-subnav $class uk-flex-$align'>";
    foreach($menu as $item) {
      $html .= $this->renderMenuItem($item);
    }
    $html .= "</ul>";

    return $html;

  }

  /**
   *  Render Nav Menu
   *  @var Page $menu     menu child pages or repeater, with a link_block field
   *  @var string $class  uikit subnav class
   *  @var bool $nav
   *
   */
  public function renderNav($menu, $class = "", $nav = true) {

    $nav_class = "uk-nav-default uk-nav-parent-icon";
    $nav_class .= !empty($class) ? " $class" : "";
    $nav_attr = $nav == true ? "uk-nav" : "";

    $html = "<ul class='$nav_class' $nav_attr>";
        foreach ($menu as $item) $html .= $this->renderNavItem($item);
    $html .= "</ul>";

    return $html;

  }

}
