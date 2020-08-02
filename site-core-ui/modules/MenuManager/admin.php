<?php namespace ProcessWire;
/**
 *  Module Admin UI
 *
 *  @author Ivan Milincic <kreativan@outlook.com>
 *  @copyright 2020 Kreativan
 *
 *  @var Module $this_module
 *  @var string $page_name
 *  @var Module $helper
 *  @var string $module_dir
 *
 *	@method $helper->pageEditLink($id)
 *	@method $helper->newPageLink($parent_id)
 *
*/

if($this->user->hasPermission('menu-manager')) {

  include("./inc/tabs.php");

  if($page_name == "main") {
    include("./inc/table-dd.php");
  } elseif($page_name == "trash") {
    include("./inc/trash.php");
  } elseif($page_name == "new") {
    include("./inc/new.php");
  }

} else {

  $this->error("You dont have permission to access this page");

}
