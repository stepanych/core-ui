<?php
/**
 *  RuntimeMarkup
 *  This file is used by admin_markup field,
 *  for adding custom markup to the pages on runtime...
 *  Markup files are included based on a current page->template.
 *  To add custom markup to the page, add admin_markup field to the page template and
 *  create new file in /runtime/ folder, usign the template name as a file name.
 */
$runtime_file = $config->paths->templates . "admin/runtime/{$page->template}.php";

if(file_exists($runtime_file)) {
  include($runtime_file);
} else {
  echo "Hello RuntimeMarkup";
}
