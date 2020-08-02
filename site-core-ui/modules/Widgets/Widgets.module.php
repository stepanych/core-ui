<?php
/**
 *  Widgets
 *
 *  @author Ivan Milincic <kreativan@outlook.com>
 *  @copyright 2020 kraetivan.net
 *  @link http://www.kraetivan.net
 *  @license http://www.gnu.org/licenses/gpl.html
 *
*/

class Widgets extends Process implements WirePageEditor {

  // for WirePageEditor
  public function getPage() {
    return $this->page;
  }

  public function init() {
    parent::init(); // always remember to call the parent init

    // Prevent Widget Delete
    $this->addHookBefore('Pages::trash', function(HookEvent $event) {
      $page = $event->arguments[0];
      $pagesArr = $this->pages->find("matrix.select_widget=$page->id");
      if($page->parent->template->name == "widgets") {
        if($this->delete_in_use == "2" && $pagesArr->count > 0) {
          $this->error("This widget is in use and can't be deleted. Remove widget from the pages and try again.");
          $event->replace = true;
          $event->return = false;
        } elseif(in_array($page->id, $this->protected_widgets)) {
          $this->error("This widget is protected and can't be deleted. You can change this in Widgets Module Settings.");
          $event->replace = true;
          $event->return = false;
        }
      }
    });

    //
    //  Create New Widget
    //
    if($this->input->post->create_new) {

      $p = new Page();
      $p->template = $this->input->post->template;
      $p->parent = $this->pages->get("template=widgets");
      $p->title = $this->input->post->title;
      $p->save();

      $p->of(false);
      $p->name = "widget-{$p->id}";
      $p->save();

      // activate page for all languages
      $helper = $this->modules->get("KreativanHelper");
      $helper->setMultilangPage($p);

      $this->message("{$p->title} has been created.");

      $redirectUrl = $this->page->url . "edit/?id={$p->id}";
      $this->session->redirect($redirectUrl);

    }

  }

  /* ----------------------------------------------------------------
    Admin UI
  ------------------------------------------------------------------- */

  public function ___execute() {
    // set a new headline, replacing the one used by our page
    // this is optional as PW will auto-generate a headline
    $this->headline('Widgets');
    // add a breadcrumb that returns to our main page
    // this is optional as PW will auto-generate breadcrumbs
    $this->breadcrumb('./', 'Widgets');
    // include admin file
    return $this->modules->get("KreativanHelper")->includeAdminFile($this, "admin.php", "main");
  }

  public function ___executeNew() {
    $this->headline('Create New Widget');
    $this->breadcrumb('./', 'Widgets');
    $this->breadcrumb('./../', 'New');
    return $this->modules->get("KreativanHelper")->includeAdminFile($this, "admin.php", "new");
  }

  public function executeEdit() {
    return $this->modules->get("KreativanHelper")->adminPageEdit();
  }


  /**
   *  Get Items
   *
   */
  public function items() {

    $limit = !empty($this_module->widgets_per_page) ? $this_module->widgets_per_page : "15";

    // Selector Start
    $selector   = "limit={$limit}, sort=-created";

    // Template
    if($this->input->get->type) {
      // Selected Templates
      $selector .= ", template={$this->input->get->type}";
    } elseif($this->input->get->p) {
      // Get Widgets on a certain page
      $c = 0;
      $thisPage   = $this->pages->get("id={$this->input->get->p}");
      $thisTemplates = "";
      foreach($thisPage->matrix as $item) {
        if($item->type == "widget") {
          $thisTemplates .= $item->select_widget != "" ? "{$item->select_widget->template}|" : "";
        }
      }
      $selector .= ", template={$thisTemplates}";
    }

    // Status
    $status = ', status!=trash,include=all';
    if($this->input->get->status == "active") {
      $status = "";
    } elseif($this->input->get->status != "") {
      $this_status = $this->input->get->status;
      $this->input->whitelist('status', $this_status);
      $status = ", status=$this_status";
    }
    $selector .= $status;

    // Sort
    $sort   = 'title';
    if($this->input->get->sort) {
      $sort = $this->input->get->sort;
      $this->input->whitelist('sort', $sort);
    }
    $selector .= ", sort=$sort";

    // q
    if($this->input->get->q) {
      $q = $this->input->get->q;
      $this->input->whitelist('q', $q);
      $selector .= ", title~=$q";
    }

    // Find Items
    $items = $this->pages->get("template=widgets")->children($selector);

    return $items;

  }


}
