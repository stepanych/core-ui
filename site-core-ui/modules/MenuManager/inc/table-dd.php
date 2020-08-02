<?php
/**
 *  Table Admin UI
 *
 *  @author Ivan Milincic <kreativan@outlook.com>
 *  @copyright 2019 kraetivan.net
 *  @link http://www.kraetivan.net
 *  @license http://www.gnu.org/licenses/gpl.html
 *
 *  @var Module $this_module
 */

// Items
$items = $this_module->items();

?>

<div class="ivm-bg-white ivm-border">
  <form action="./" method="POST">
    <table class="ivm-table uk-table uk-table-striped uk-table-middle uk-margin-remove">

      <thead>
        <tr>
            <th></th>
            <th>Title</th>
            <th>Link Type</th>
            <th>Link</th>
            <th>Submenu</th>
            <th></th>
        </tr>
      </thead>

      <tbody id="ivm-sortable">
        <?php if($items->count) :?>
          <?php foreach($items as $item) :?>

            <?php
              $class = $item->isHidden() || $item->isUnpublished() ? "ivm-is-hidden" : "";

              $link = "-";
              if($item->link_block->link_type == '2' && !empty($item->link_block->select_page)) {
                  $page_link = $this->pages->get("id={$item->link_block->select_page}");
                  if($page_link->parent->id == "1") {
                      $link =  "/{$page_link->name}/";
                  } else {
                      $link = "/{$page_link->parent->name}/{$page_link->name}/";
                  }
              } elseif($item->link_block->link_type == '3') {
                  $link = $item->link_block->link;
              }
            ?>

            <tr class="ivm-ajax-parent <?= $class ?>"
                data-sort="<?= $item->sort ?>"
                data-id="<?= $item->id ?>"
            >

              <td class="uk-table-shrink">
                  <div class="handle">
                    <i class='fa fa-bars'></i>
                  </div>
              </td>

              <td>
                <a href="<?= $helper->pageEditLink($item->id) ?>">
                  <?= $item->title ?>
                </a>
              </td>

              <td>
                <em>
                  <?= $item->link_block->link_type->title ?>
                </em>
              </td>

              <td>
                <?= $link ?>
              </td>

              <td>
                <?= ($item->menu && $item->menu->count) ? $item->menu->count : "-" ?>
              </td>

              <td class="ivm-actions uk-text-right" style="width: 120px;padding-right: 20px;">
                <a
                  href="#"
                  class="ivm-ajax-button"
                  title="Publish / Unpublish" uk-tooltip
                  data-id="<?= $item->id ?>"
                  data-action="publish"
                >
                    <i class="fa fa-toggle-on"></i>
                </a>

                <a href="<?= $helper->actionURL("trash", $item->id) ?>" title="Trash" uk-tooltip
                  onclick="modalConfirm('Trash', 'Are you sure you want to trash <?= $item->title ?>?')"
                >
                  <i class="fa fa-times"></i>
                </a>
              </td>

            </tr>
          <?php endforeach; ?>
        <?php else :?>
          <tr>
              <td colspan="100%">
                  <h3 class='uk-margin-remove'>No items to display</h3>
              </td>
          </tr>
        <?php endif;?>
      </tbody>

    </table>
  </form>
</div>
