<?php
$cms = $this->modules->get("cms");

//
//  Form
//

$form = $this->modules->get("InputfieldForm");
$form->action = "{$this->page->url}{$this->input->urlSegment1}";
$form->method = "post";
$form->attr("id+name","settings-form");
$form->attr("enctype", "multipart/form-data");

$f = $this->wire('modules')->get("InputfieldText");
$f->attr('name', 'project');
$f->label = 'Project';
$f->value = $this_module->vendor("project");
$f->columnWidth = "100%";
$f->collapsed = 7;
$form->add($f);

if($this_module->vendor("developer") != "") {
  $f = $this->wire('modules')->get("InputfieldText");
  $f->attr('name', 'developer');
  $f->label = 'Developer';
  $f->value = $this_module->vendor("developer");
  $f->columnWidth = "50%";
  $f->collapsed = 7;
  $form->add($f);

  $f = $this->wire('modules')->get("InputfieldText");
  $f->attr('name', 'website');
  $f->label = 'Website';
  $f->value = $this_module->vendor("website");
  $f->columnWidth = "50%";
  $f->collapsed = 7;
  $form->add($f);
}

$f = $this->wire('modules')->get("InputfieldText");
$f->attr('name', 'cms');
$f->label = 'CMS';
$f->value = $this_module->vendor("cms");
$f->columnWidth = "100%";
$f->collapsed = 7;
$form->add($f);

$f = $this->wire('modules')->get("InputfieldText");
$f->attr('name', 'framework');
$f->label = 'Framework';
$f->value = $this_module->vendor("framework");
$f->columnWidth = "100%";
$f->collapsed = 7;
$form->add($f);

$f = $this->wire('modules')->get("InputfieldText");
$f->attr('name', 'version');
$f->label = 'Version';
$f->value = $this_module->vendor("version");
$f->columnWidth = "100%";
$f->collapsed = 7;
$form->add($f);

/* ----------------------------------------------------------------
  Submit
------------------------------------------------------------------- */
$submit = $this->modules->get("InputfieldSubmit");
$submit->attr("value","Save");
$submit->attr("id+name","submit_site");
// $form->append($submit);

echo $form->render();
