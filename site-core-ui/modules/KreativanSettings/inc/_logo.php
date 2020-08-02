<?php
$time = time();

//
//  Logo
//

if($this_module->logo()) {

  $f = $this->wire('modules')->get("InputfieldMarkup");
  $f->label = "Logo";
  $f->attr("class", "uk-position-relative");
  $f->themeColor = "secondary";
  $f->columnWidth = "33%";
  $f->value = "
    <a href='./?delete_media=logo'
      class='uk-position-top-right uk-position-small'
      onclick='modalConfirm()'
    >
      <i class='fa fa-trash'></i>
    </a>
    <img src='{$this_module->logo()}?timestamp=$time' style='height:60px;' />
  ";
  $form->add($f);

} else {

  $f = $this->wire('modules')->get("InputfieldFile");
  $f->label = 'Logo';
  $f->attr('name', 'logo');
  $f->attr('accept', '.png, .svg');
  $f->maxFiles = 1;
  $f->extensions = "png svg";
  $f->columnWidth = "33%";
  $f->collapsed = 0;
  $form->add($f);

}


//
//  Logo Footer
//

if($this_module->logoFooter()) {

  $f = $this->wire('modules')->get("InputfieldMarkup");
  $f->label = "Logo Footer";
  $f->attr("class", "uk-position-relative");
  $f->themeColor = "secondary";
  $f->columnWidth = "33%";
  $f->value = "
    <a href='./?delete_media=logo-footer'
      class='uk-position-top-right uk-position-small'
      onclick='modalConfirm()'
    >
      <i class='fa fa-trash'></i>
    </a>
    <img src='{$this_module->logoFooter()}?timestamp=$time' style='height:60px;' />
  ";
  $form->add($f);

} else {

  $f = $this->wire('modules')->get("InputfieldFile");
  $f->label = 'Logo Footer';
  $f->attr('name', 'logo_footer');
  $f->attr('accept', '.png, .svg');
  $f->maxFiles = 1;
  $f->extensions = "png svg";
  $f->columnWidth = "33%";
  $f->collapsed = 0;
  $form->add($f);

}

//
//  Logo Mobile
//

if($this_module->logoMobile()) {

  $f = $this->wire('modules')->get("InputfieldMarkup");
  $f->label = "Logo Mobile";
  $f->attr("class", "uk-position-relative");
  $f->themeColor = "secondary";
  $f->columnWidth = "33%";
  $f->value = "
    <a href='./?delete_media=logo-mobile'
      class='uk-position-top-right uk-position-small'
      onclick='modalConfirm()'
    >
      <i class='fa fa-trash'></i>
    </a>
    <img src='{$this_module->logoMobile()}?timestamp=$time' style='height:60px;' />
  ";
  $form->add($f);

} else {

  $f = $this->wire('modules')->get("InputfieldFile");
  $f->label = 'Logo Mobile';
  $f->attr('name', 'logo_mobile');
  $f->attr('accept', '.png, .svg');
  $f->maxFiles = 1;
  $f->extensions = "png svg";
  $f->columnWidth = "33%";
  $f->collapsed = 0;
  $form->add($f);

}
