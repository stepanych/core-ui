<?php
/**
 *  Tabs Admin UI
 *
 *  @author Ivan Milincic <kreativan@outlook.com>
 *  @copyright 2018 Kreativan
 *
 *  @var string $page_name
 *
*/

$main_menu      = $this->pages->get("/system/main-menu/");
$parent_menu    = $this->pages->get("/system/{$this->input->get->menu}/");
$new_item_link  = ($page_name != "new") ? "{$page->url}new/?menu={$this->input->get->menu}" : $page->url."?menu={$this->input->get->menu}";

// TABS
$tabs_arr = [];
foreach($pages->find("template=menu, include=hidden") as $tab) {
  if($tab->name != "main-menu" && !in_array($tab->id, $this_module->hide_menus)) {
    $tabs_arr["$tab->name"] = [
      "title" => $tab->title,
      "url" => $page->url . "./?menu=$tab->name",
    ];
  }
}

?>


<ul class="ivm-tabs uk-tab uk-position-relative">

  <?php if(!in_array($main_menu->id, $this_module->hide_menus)):?>
    <li class="<?= (!$this->input->get->menu && $page_name == "main") ? "uk-active" : ""; ?>">
      <a href="<?= $page->url ?>">
        <?= $main_menu->title ?>
      </a>
    </li>
  <?php endif;?>

  <?php foreach($tabs_arr as $key => $value) :?>
    <li class="<?= ($page_name != "new" && $this->input->get->menu == $key) ? "uk-active" : ""; ?>">
      <a href="<?= $value["url"]?>">
        <?= $value["title"] ?>
      </a>
    </li>
  <?php endforeach;?>

  <?php if($this_module->itemsTrash()->count) :?>
    <li class="<?= ($page_name == "trash") ? "uk-active" : ""; ?>">
      <a href="<?= $page->url ?>trash">
        <i class="fas fa-trash"></i>
        Trash (<?= $this_module->itemsTrash()->count ?>)
      </a>
    </li>
  <?php endif;?>

  <?php if($page_name != "trash") :?>
    <li class="<?= ($page_name == "new") ? "uk-active" : ""; ?>">
      <a href="<?= $new_item_link ?>">
        <?php if($page_name != "new") :?>
          <i class="fas fa-plus-circle"></i> Add New
        <?php else :?>
          <i class="fa fa-arrow-left"></i> Back
        <?php endif;?>
      </a>
    </li>
  <?php endif;?>

  <?php if($this->user->isSuperuser()) :?>
    <li>
      <a href="<?= $modules->getModuleEditUrl($this_module) ?>" title="Module Settings" uk-tooltip>
        <i class="fas fa-cog"></i>
      </a>
    </li>
  <?php endif;?>

</ul>
