<?php namespace ProcessWire;
/**
 *  Breadcrumb
 *
 *  @var string $align left/center/right
 *  @var string $class
 *  @var integer $word_limit
*/

$align = !empty($align) ? $align : "center";
$class  = !empty($class) ? " $class" : "";
$word_limit = !empty($word_limit) ? $word_limit : 25;

?>

<ul class="uk-breadcrumb uk-flex-<?= $align ?><?= $class ?>">

  <?php foreach($page->parents() as $item) :?>
    <li>
      <a href="<?= $item->url ?>" title="<?= $item->title ?>">
        <?= $sanitizer->truncate($item->title, $word_limit); ?>
      </a>
    </li>
  <?php endforeach;?>

  <li class="uk-active">
    <span>
      <?= $sanitizer->truncate($page->title, $word_limit); ?>
    </span>
  </li>

</ul>
