<?php
/**
 *  KreativanSettings
 *
 *  @author Ivan Milincic <kreativan@outlook.com>
 *  @copyright 2020 kraetivan.net
 *  @link http://www.kraetivan.net
 *  @license http://www.gnu.org/licenses/gpl.html
 *
*/

class KreativanSettings extends Process implements WirePageEditor {

  // for WirePageEditor
  public function getPage() {
    return $this->page;
  }

  public function __construct() {
    $this->helper       = $this->modules->get("KreativanHelper");
		$this->module_url   = $this->config->urls->siteModules.$this->className();
    $this->cmsPath      = $this->config->paths->templates . "assets/";
    $this->cmsUrl       = $this->config->urls->httpTemplates . "assets/";
  }

  public function init() {
    parent::init(); // always remember to call the parent init

    if($this->helper->isAdminPage() && $this->page->name == "settings") {
      $this->config->scripts->append($this->module_url."/kreativan-settings.js");
    }
    // include actions
    include("./_actions.php");

    // create dir if doesent exists
    if(!is_dir($this->cmsPath)) $this->files->mkdir($this->cmsPath);

    // Delete Media
    if($this->input->get->delete_media) {
      $file_name = $this->sanitizer->text($this->input->get->delete_media);
      if($file_name == "favicon_all") {
        $this->delete_media("favicon-16x16", $this->cmsPath);
        $this->delete_media("favicon-32x32", $this->cmsPath);
        $this->delete_media("apple-touch-icon", $this->cmsPath);
      } else {
        $this->delete_media("$file_name", $this->cmsPath);
      }
      $this->message("Media deleted");
      $this->session->redirect($this->page->url.$this->input->urlSegment1);
    }

  }

  /* ----------------------------------------------------------------
    Site Info
  ------------------------------------------------------------------- */

  public function vendor($field_name = "") {
    $file = $this->config->paths->templates . "vendor/vendor.json";
    if(!file_exists($file)) return false;
    $json = file_get_contents($file);
    $data = json_decode($json, true);
    return ($field_name != "") ? $data[$field_name] : $data;
  }

  /**
   *  Get Site Info from a json file
   *  @param strint $field_name
   */
  public function siteInfo($field_name = "") {

    if(!file_exists($this->cmsPath."site-info.json")) return false;

    $site_json = file_get_contents($this->cmsPath."site-info.json");
    $site_info = json_decode($site_json, true);

    if($field_name != "") {

      // multilang field name
      $field_name_lng = "";
      if(!empty($this->languages) && count($this->languages) > 0) {
        $field_name_lng = "{$field_name}__{$this->user->language->id}";
      }

      // if multilang field exists and its not empty, use it
      // otherwise use default field
      if(array_key_exists($field_name_lng, $site_info)) {
        $field_name = $site_info["$field_name_lng"] != "" ? $field_name_lng : $field_name;
      }

      return (array_key_exists($field_name, $site_info)) ? $site_info["$field_name"] : false;

    } else {

      return $site_info;

    }
  }

  /* ----------------------------------------------------------------
    Media
  ------------------------------------------------------------------- */

  public function logo() {
    $logo = "";
    if(file_exists($this->cmsPath."logo.svg")) {
      $logo = "{$this->cmsUrl}logo.svg";
    } elseif(file_exists($this->cmsPath."logo.png")) {
      $logo = "{$this->cmsUrl}logo.png";
    }
    return ($logo != "") ? $logo : false;
  }

  public function logoMobile() {
    $logo = "";
    if(file_exists($this->cmsPath."logo-mobile.svg")) {
      $logo = "{$this->cmsUrl}logo-mobile.svg";
    } elseif(file_exists($this->cmsPath."logo-mobile.png")) {
      $logo = "{$this->cmsUrl}logo-mobile.png";
    }
    return ($logo != "") ? $logo : false;
  }

  public function logoFooter() {
    $logo = "";
    if(file_exists($this->cmsPath."logo-footer.svg")) {
      $logo = "{$this->cmsUrl}logo-footer.svg";
    } elseif(file_exists($this->cmsPath."logo-footer.png")) {
      $logo = "{$this->cmsUrl}logo-footer.png";
    }
    return ($logo != "") ? $logo : false;
  }


  //
  //  Uplaod & Delete Media
  //

  public function upload_media($field_name, $dest, $file_name) {
    if(!isset($_FILES["$field_name"])) return false;
    $image = $_FILES["$field_name"]["name"];
    if(is_array($image)) $image = $_FILES["$field_name"]["name"][0];
    if($image && $image != "") {
      if(file_exists("{$dest}{$file_name}.svg")) $this->files->unlink("{$dest}{$file_name}.svg");
      if(file_exists("{$dest}{$file_name}.png")) $this->files->unlink("{$dest}{$file_name}.png");
      if(file_exists("{$dest}{$file_name}.jpg")) $this->files->unlink("{$dest}{$file_name}.jpg");
      $this->modules->get("KreativanHelper")->uploadImage("$field_name", "$dest", "$file_name");
      $this->message("Media uploaded");
    }
  }

  public function delete_media($file_name, $dest) {
    if(file_exists("{$dest}{$file_name}.svg")) $this->files->unlink("{$dest}{$file_name}.svg");
    if(file_exists("{$dest}{$file_name}.png")) $this->files->unlink("{$dest}{$file_name}.png");
    if(file_exists("{$dest}{$file_name}.jpg")) $this->files->unlink("{$dest}{$file_name}.jpg");
  }

  /* ----------------------------------------------------------------
    Admin UI
  ------------------------------------------------------------------- */

  /**
   *  Execute
   *  Module Page
   *  @method includeAdminFile()
   *
   */
  public function ___execute() {
    // set a new headline, replacing the one used by our page
    // this is optional as PW will auto-generate a headline
    $this->headline('Site Settings');
    // add a breadcrumb that returns to our main page
    // this is optional as PW will auto-generate breadcrumbs
    $this->breadcrumb('./', 'Settings');
    // include admin file
    return $this->modules->get("KreativanHelper")->includeAdminFile($this, "admin.php", "main");

  }

  public function ___executeOptions() {
    $this->headline('Options');
    $this->breadcrumb('./', 'Settings');
    $this->breadcrumb('./options', 'Options');
    return $this->modules->get("KreativanHelper")->includeAdminFile($this, "admin.php", "options");
  }

  public function ___executeScripts() {
    $this->headline('Scripts');
    $this->breadcrumb('./', 'Settings');
    $this->breadcrumb('./scripts', 'Scripts');
    return $this->modules->get("KreativanHelper")->includeAdminFile($this, "admin.php", "scripts");
  }

  public function ___executeVendor() {
    $this->headline('Vendor');
    $this->breadcrumb('./', 'Settings');
    $this->breadcrumb('./vendor', 'Vendor');
    return $this->modules->get("KreativanHelper")->includeAdminFile($this, "admin.php", "vendor");
  }

  /**
   *  This is custom page edit for this module
   *  Edit URL @example admin/MODULE_URL/edit/id?=PAGE_ID
   */
  public function executeEdit() {
    return $this->modules->get("KreativanHelper")->adminPageEdit();
  }

}
