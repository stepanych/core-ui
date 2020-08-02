<?php namespace ProcessWire;
/**
 *  Site
 *
 *  @author Ivan Milincic <kreativan@outlook.com>
 *  @copyright 2020 kraetivan.net
 *  @link http://www.kraetivan.net
 *  @license http://www.gnu.org/licenses/gpl.html
 *
*/

$form = $this->modules->get("InputfieldForm");
$form->action = "{$this->page->url}{$this->input->urlSegment1}";
$form->method = "post";
$form->attr("id+name","settings-form");
$form->attr("enctype", "multipart/form-data");

include("_favicon.php");
include("_logo.php");

/* ----------------------------------------------------------------
  Site Info
------------------------------------------------------------------- */

// title
$f = $this->wire('modules')->get("InputfieldText");
$f->attr('name', 'title');
$f->label = 'Site Name';
$f->value = $this_module->siteInfo("title");
$f->columnWidth = "100%";
$form->add($f);

// about
$f = $this->wire('modules')->get("InputfieldTextarea");
$f->attr('name', "about");
$f->label = "About";
$f->value = $this_module->siteInfo("about");
$f->useLanguages = (!empty($this->languages) && count($this->languages)) > 0 ? true : false;
if(!empty($this->languages) && count($this->languages) > 0) {
  foreach($this->languages as $lng) {
    if($lng->name != "default") {
      $valueLng = "value{$lng->id}";
      $f->{$valueLng} = $this_module->siteInfo("about__{$lng->id}");
    }
  }
}
$f->rows = "3";
$f->columnWidth = "100%";
$form->add($f);

// website
$f = $this->wire('modules')->get("InputfieldText");
$f->attr('name', 'website');
$f->label = 'Website';
$f->value = $this_module->siteInfo("website");
$f->columnWidth = "33%";
$form->add($f);

// phone
$f = $this->wire('modules')->get("InputfieldText");
$f->attr('name', 'phone');
$f->label = 'Phone';
$f->value = $this_module->siteInfo("phone");
$f->columnWidth = "33%";
$form->add($f);

// email
$f = $this->wire('modules')->get("InputfieldText");
$f->attr('name', 'email');
$f->label = 'Email Address';
$f->value = $this_module->siteInfo("email");
$f->columnWidth = "33%";
$form->add($f);

// address
$f = $this->wire('modules')->get("InputfieldText");
$f->attr('name', 'address');
$f->label = 'Address';
$f->value = $this_module->siteInfo("address");
$f->columnWidth = "100%";
$form->add($f);

// meta
$f = $this->wire('modules')->get("InputfieldText");
$f->attr('name', 'meta');
$f->label = 'Meta';
$f->value = $this_module->siteInfo("meta");
$f->useLanguages = (!empty($this->languages) && count($this->languages)) > 0 ? true : false;
if(!empty($this->languages) && count($this->languages) > 0) {
  foreach($this->languages as $lng) {
    if($lng->name != "default") {
      $valueLng = "value{$lng->id}";
      $f->{$valueLng} = $this_module->siteInfo("meta__{$lng->id}");
    }
  }
}
$f->columnWidth = "100%";
$f->description = "Opening or working hours etc... Usually be displayed along site contact info";
$form->add($f);


/* ----------------------------------------------------------------
  Submit
------------------------------------------------------------------- */

$submit = $this->modules->get("InputfieldSubmit");
$submit->attr("value","Save");
$submit->attr("id+name","submit_site");
$form->append($submit);


echo $form->render();
