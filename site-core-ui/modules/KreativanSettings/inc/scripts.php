<?php namespace ProcessWire;
/**
 *  Scripts
 *
 *  @author Ivan Milincic <kreativan@outlook.com>
 *  @copyright 2020 kraetivan.net
 *  @link http://www.kraetivan.net
 *  @license http://www.gnu.org/licenses/gpl.html
 *
*/

$settings = $this->modules->get("KreativanSettings");

$form = $this->modules->get("InputfieldForm");
$form->action = "{$this->page->url}{$this->input->urlSegment1}";
$form->method = "post";
$form->attr("id+name","settings-form");
$form->attr("enctype", "multipart/form-data");

// scripts_in_head
$f = $this->wire('modules')->get("InputfieldTextarea");
$f->attr('name', 'scripts_in_head');
$f->label = 'Scripts in Head';
$f->columnWidth = "100%";
$f->rows = "10";
$f->notes = __("These scripts will be included in the `<head>` section.");
$f->collapsed = 0;
$f->value = $settings->scripts_in_head;
$form->add($f);

// scripts_in_body
$f = $this->wire('modules')->get("InputfieldTextarea");
$f->attr('name', 'scripts_in_body');
$f->label = 'Scripts in Body';
$f->columnWidth = "100%";
$f->rows = "10";
$f->notes = __("These scripts will be included just below opening `<body>` tag.");
$f->collapsed = 0;
$f->value = $settings->scripts_in_body;
$form->add($f);

// scripts_in_footer
$f = $this->wire('modules')->get("InputfieldTextarea");
$f->attr('name', 'scripts_in_footer');
$f->label = 'Scripts in Footer';
$f->columnWidth = "100%";
$f->rows = "10";
$f->notes = __("These scripts will be included before closing `</body>` tag.");
$f->collapsed = 0;
$f->value = $settings->scripts_in_footer;
$form->add($f);


// Submit
$submit = $this->modules->get("InputfieldSubmit");
$submit->attr("value","Save");
$submit->attr("id+name","submit_scripts");
$form->append($submit);


echo $form->render();
