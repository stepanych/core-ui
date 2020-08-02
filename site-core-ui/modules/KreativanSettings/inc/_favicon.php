<?php
$time = time();

$_16    = $this_module->cmsPath . "favicon-16x16.png";
$_32    = $this_module->cmsPath . "favicon-32x32.png";
$_apple = $this_module->cmsPath . "apple-touch-icon.png";
$favUrl = $this_module->cmsUrl;
$timeSufix  = "?timestamp={$time}";


$favicons = $this->wire('modules')->get("InputfieldFieldset");
$favicons->label = "Favicons";
if(file_exists($_16) || file_exists($_32) || file_exists($_apple)) {
  $favicons->icon = "check-square";
}
$favicons->collapsed = 1;
$form->add($favicons);

$fp = "";
if(file_exists($_apple)) $fp .= "<img src='{$favUrl}apple-touch-icon.png{$timeSufix}' style='height:48px' class='uk-margin-small-right' />";
if(file_exists($_32)) $fp .= "<img src='{$favUrl}favicon-32x32.png{$timeSufix}' style='height:32px' class='uk-margin-small-right' />";
if(file_exists($_16)) $fp .= "<img src='{$favUrl}favicon-16x16.png{$timeSufix}' style='height:16px' class='uk-margin-small-right' />";

if(file_exists($_16) || file_exists($_32) || file_exists($_apple)) {

  $f = $this->wire('modules')->get("InputfieldMarkup");
  $f->attr("class", "uk-margin-remove uk-position-relative");
  // /$f->label = "Preview";
  $f->value = "
    <div>$fp</div>
    <a href='{$page->url}/{$this->input->urlSegment1}?delete_media=favicon_all'
      class='uk-display-block uk-margin-small-top'
      onclick='modalConfirm(\"Remove\", \"Are you sure you want to remove <b>favicons</b>?\")'
    >
      Remove
    </a>
  ";
  $favicons->add($f);

}

$f = $this->wire('modules')->get("InputfieldFile");
$f->label = 'Apple 180x180';
$f->attr('name', 'favicon_apple');
$f->attr('accept', '.png');
$f->maxFiles = 1;
$f->extensions = "png";
$f->columnWidth = "33%";
$f->collapsed = 0;
if(file_exists($_apple)) $f->icon = "check-square";
$favicons->add($f);

$f = $this->wire('modules')->get("InputfieldFile");
$f->label = '32x32';
$f->attr('name', 'favicon_32');
$f->attr('accept', '.png');
$f->maxFiles = 1;
$f->extensions = "png";
$f->columnWidth = "33%";
$f->collapsed = 0;
if(file_exists($_32)) $f->icon = "check-square";
$favicons->add($f);

$f = $this->wire('modules')->get("InputfieldFile");
$f->label = '16x16';
$f->attr('name', 'favicon_16');
$f->attr('accept', '.png');
$f->maxFiles = 1;
$f->extensions = "png";
$f->columnWidth = "33%";
$f->collapsed = 0;
if(file_exists($_16)) $f->icon = "check-square";
$favicons->add($f);
