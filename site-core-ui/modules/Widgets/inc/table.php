<?php
/**
 *  Table Admin UI
 *
 *  @author Ivan Milincic <kreativan@outlook.com>
 *  @copyright 2018 Kreativan
 *
 *  @var PageArray $items
 *
*/

?>

<div class="ivm-bg-white ivm-border">
<?php
  // include("toolbar.php");
?>
<table class="uk-table uk-table-middle uk-table-small uk-table-striped uk-margin-remove">

  <?php if($this_module->items()->count) :?>
    <thead>
      <tr>
        <th></th>
        <th style="padding-left:0;">Title</th>
        <th>Type</th>
        <th>Template</th>
        <th>ID</th>
        <th class="uk-text-right">Shortcode</th>
      </tr>
    </thead>
  <?php endif;?>

  <tbody>
    <?php foreach($this_module->items() as $item):?>

      <?php
        $class = $item->isHidden() || $item->isUnpublished() ? "ivm-is-hidden" : "";
      ?>

      <tr class="<?= $class ?> ivm-ajax-parent" data-sort='<?= $item->sort ?>' data-id='<?= $item->id ?>' class="<?= $class ?>">

        <td class="uk-table-shrink uk-text-right">
          <?php
            $files->include("./inc/drop.php", [
              "item" => $item,
              "helper" => $modules->get("KreativanHelper"),
              "this_module" => $this_module
            ]);
          ?>
        </td>

        <td style="padding-left: 0;">
          <a href="<?= $helper->pageEditLink($item->id) ?>">
            <?= $item->title ?>
          </a>
        </td>

        <td>
          <?= !empty($item->template->label) ? $item->template->label : "-" ?>
        </td>

        <td>
          <?= $item->template->name ?>
        </td>

        <td>
          <?= $item->id ?>
        </td>

        <td class="uk-text-right">
          <code>[[widget id="<?= $item->id ?>"]]</code>
        </td>

      </tr>

    <?php endforeach;?>
  </tbody>

</table>
</div>

<?php
if($this_module->items()->count < 1) echo "<div class='uk-padding'><h3 class='uk-margin-remove'>No widgets to display</h3></div>";
echo $this_module->items()->renderPager();
?>
