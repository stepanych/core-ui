<?php namespace ProcessWire;
/**
 *  Ajax
 *  Here we can point and process all ajax request
 *  It's not recommended to add any code here.
 *  Instead, create files in /vendor/ajax/ folder.
 *  All files from this folder will be included here.
 */

$ajax_dir = $config->paths->templates . "ajax/";
if(is_dir($ajax_dir)) {
  $ajax_files = scandir($ajax_dir);
  foreach($ajax_files as $php) {
    if($php != "." && $php != "..") $files->include($ajax_dir.$php);
  }
}
