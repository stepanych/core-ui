<?php
/**
 *  Trash
 *
 *  @author Ivan Milincic <kreativan@outlook.com>
 *  @copyright 2020 kraetivan.net
 *  @link http://www.kraetivan.net
 *  @license http://www.gnu.org/licenses/gpl.html
 *
*/

?>

<div class="ivm-bg-white ivm-border ivm-box-shadow ivm-border-remove-bottom">
  <form action="./" method="POST">
    <table class="ivm-table uk-table uk-table-striped uk-table-middle uk-table-small uk-margin-remove">

      <thead>
        <tr>
          <th></th>
          <th>Title</th>
          <th>Link Type</th>
          <th></th>
        </tr>
      </thead>

      <tbody>
        <?php if($this_module->itemsTrash()->count) :?>
          <?php foreach($this_module->itemsTrash() as $item) :?>

            <?php
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

            <tr>

              <td class="uk-table-shrink">
                <i class="fas fa-bars"></i>
              </td>

              <td class="uk-text-danger">
                <?= $item->title ?>
              </td>

              <td class="uk-text-danger">
                <?= $link ?>
              </td>

              <td class="ivm-actions uk-text-right" style="width: 120px;padding-right: 20px;">

                <a href="?admin_action=delete&id=<?= $item->id ?>" title="Delete Permanently" uk-tooltip onclick="modalConfirm()">
                  <i class="fas fa-trash uk-text-danger"></i>
                </a>

                <a href="?admin_action=restore&id=<?= $item->id ?>" title="Restore" uk-tooltip onclick="modalConfirm()">
                  <i class="fas fa-redo uk-text-success"></i>
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
