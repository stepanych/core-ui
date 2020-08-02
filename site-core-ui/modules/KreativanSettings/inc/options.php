<?php namespace ProcessWire;
/**
 *  Options
 *
 *  @author Ivan Milincic <kreativan@outlook.com>
 *  @copyright 2020 kraetivan.net
 *  @link http://www.kraetivan.net
 *  @license http://www.gnu.org/licenses/gpl.html
 *
*/

$settings = $this->modules->get("KreativanSettings");
$helper = $this->modules->get("KreativanHelper");

$form = $this->modules->get("InputfieldForm");
$form->action = "{$this->page->url}{$this->input->urlSegment1}";
$form->method = "post";
$form->attr("id+name","settings-form");
$form->attr("enctype", "multipart/form-data");

// hide_system_pages
$f = $this->wire('modules')->get("InputfieldRadios");
$f->attr('name', 'hide_system_pages');
$f->label = 'Hide System Pages';
$f->options = ['1' => "Yes",'2' => "No"];
$f->required = true;
$f->defaultValue = "2";
$f->optionColumns = 1;
$f->columnWidth = "100%";
$f->value = $helper->hide_system_pages;
$f->collapsed = $this->user->isSuperuser() ? 1 : 4;
$form->add($f);

// default_lang
$f = $this->wire('modules')->get("InputfieldText");
$f->attr('name', 'default_lang');
$f->label = 'Default language code';
$f->value = $settings->default_lang;
$f->columnWidth = "100%";
$f->description = "Default languge code eg: `en` for english";
$form->add($f);

// Google Maps Api Key
$f = $this->wire('modules')->get("InputfieldText");
$f->attr('name', 'googleApiKey');
$f->label = 'Google Maps Api Key';
$f->value = $this->modules->get("FieldtypeMapMarker")->googleApiKey;
$f->columnWidth = "100%";
$f->description = "Get api key from [here](https://console.cloud.google.com/google/maps-apis/overview)";
$form->add($f);

// Submit
$submit = $this->modules->get("InputfieldSubmit");
$submit->attr("value","Save");
$submit->attr("id+name","submit_options");
$form->append($submit);


echo $form->render();
