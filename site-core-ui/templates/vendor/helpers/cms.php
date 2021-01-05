<?php namespace ProcessWire;

// load js
function loadJS($js) {
  wire('config')->scripts->add($js);
}

// load css
function loadCSS($css) {
  wire('config')->styles->add($css);
}

// Include file relative to the templates folder
function render($file_path, $vars = []) {
  $full_file_path = wire("config")->paths->templates . $file_path;
  return wire("files")->include($full_file_path, $vars);
}

/**
 *  Render Widget
 *  @param Page $widget
 */
function renderWidget($widget) {
  $widget_path = wire("config")->paths->templates . "widgets/{$widget->template}.php";
  return wire("files")->include($widget_path, ["widget" => $widget]);
}


/* ----------------------------------------------------------------
  Site
------------------------------------------------------------------- */

/**
 *  Get Site Info from a json file
 *  @param strint $field_name
 */
function siteInfo($field_name = "") {
  $cmsSettings = wire("modules")->get("KreativanSettings");
  return $cmsSettings->siteInfo($field_name);
}

/**
 *  Logo
 *  @param string $what_logo - default|mobile|footer
 *  @example logo("mobile")
 *  @return string logo url
 */
function logo($what_logo = "default") {
  switch ($what_logo) {
    case 'default':
      return siteInfo("logo");
      break;
    case 'mobile':
      return siteInfo("logo_mobile");
      break;
    case 'footer':
      return siteInfo("logo_footer");
      break;
    default:
      return false;
      break;
  }
}

/**
 *  favicon
 *  @param string $what - 16|32|apple
 *  @example logo("16")
 *  @return string favicon  url
 */
function favicon($what) {
  $favicon_path = wire("config")->paths->templates."assets/";
  $favicon_url = wire("config")->urls->templates."assets/";
  switch ($what) {
    case '16':
      $favicon = "favicon-16x16.png";
      break;
    case '32':
      $favicon = "favicon-32x32.png";
      break;
    case 'apple':
      $favicon = "apple-touch-icon.png";
      break;
    default:
      $favicon = "";
      break;
  }
  return (file_exists($favicon_path.$favicon)) ? $favicon_url.$favicon : false;
}
