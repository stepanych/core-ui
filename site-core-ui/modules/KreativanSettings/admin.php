<?php namespace ProcessWire;
/**
 *  Module Admin UI
 *  @var Module $this_module
 *  @var string $page_name
 *  @var Module $helper
 *  @var string $module_dir
 *
 *	@method $helper->pageEditLink($id)
 *	@method $helper->newPageLink($parent_id)
 *
*/

$this_module->vendor();

if($user->hasPermission("cms-settings")) {

  include("./inc/_tabs.php");

  if($page_name == "main") {
    include("./inc/site.php");
  } elseif($page_name == "options") {
    include("./inc/options.php");
  } elseif($page_name == "scripts") {
    include("./inc/scripts.php");
  } elseif($page_name == "vendor") {
    include("./inc/vendor.php");
  }

} else {

  $this->error("You dont have permission to access this page");

}
