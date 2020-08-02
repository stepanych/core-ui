<?php
/**
 *  new.php
 *
 *  @author Ivan Milincic <kreativan@outlook.com>
 *  @copyright 2018 Kreativan
 *
 *
*/

$this_menu = $this->pages->get("template=menu, name={$this->input->get->menu}");
$tmpl_option = (!$this->input->get->menu || $this->input->get->menu == "mobile-menu") ? "menu-item-dropdown" : "menu-item";

// Build form
$form = $this->modules->get("InputfieldForm");
$form->action = "{$page->url}?menu={$this->input->get->menu}";
$form->method = "post";
$form->attr("id+name","create_new");


// template
$f = $this->modules->get("InputfieldText");
$f->attr('name', 'template');
$f->attr('required', '');
$f->attr('class', 'uk-hidden');
$f->label = "New {$this_menu->title} Item";
$f->required = true;
$f->value = $tmpl_option;
$form->append($f);

// title
$f = $this->modules->get("InputfieldText");
$f->attr('name', 'title');
$f->attr('required', '');
$f->label = 'Title';
$f->required = true;
$form->append($f);

// Submit
$submit = $this->modules->get("InputfieldSubmit");
$submit->attr("value","Save");
$submit->attr("id+name","create_new");
$submit->attr("class","ui-button");
$form->append($submit);

echo $form->render();
