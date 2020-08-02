<?php namespace ProcessWire;
/**
 *  Uikit gallery markup
 *
 *  @var PageImages $images
 *
 *  @var string $items_per_row uikit grid class expand/1-4 etc...
 *  @var string $grid  uk-grid-small/uk-grid-large/uk-grid-collapse
 *  @var string $animation slide|fade|scale
 *
 *  @var int $width
 *  @var int $height
*/

$default_per_row = $images->count <= 4 ? "expand" : "1-4";

$items_per_row = !empty($items_per_row) ? $items_per_row : $default_per_row ;
$class = "tm-gallery uk-child-width-$items_per_row@m uk-child-width-1-2";
$class .= !empty($grid) ? " $grid" : "";

$width = !empty($width) ? $width : 640;
$height = !empty($height) ? $height : 480;

$animation = !empty($adnimation) ? $animation : "slide";

?>

<div class="<?= $class ?> uk-grid" uk-grid uk-lightbox="animation: <?= $animation ?>">
  <?php foreach($images as $img) :?>
    <div>
      <a href="<?= $img->maxHeight(700)->url ?>" data-alt="<?= $img->description ?>"
        class="uk-position-relative uk-transition-toggle uk-display-block"
      >
        <?php
          picture($img, [
            "width" => $width,
            "height" => $height,
            "alt" => $img->description,
          ]);
        ?>
        <div class="uk-position-cover uk-transition-fade tm-overlay-soft uk-visible@m"></div>
      </a>
    </div>
  <?php endforeach;?>
</div>
