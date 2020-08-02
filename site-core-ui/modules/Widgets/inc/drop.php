<?php
/**
 *  Drop Menu
 *  is included in table...
 *
 *  @author Ivan Milincic <kreativan@outlook.com>
 *  @copyright 2020 kraetivan.net
 *  @link http://www.kraetivan.net
 *  @license http://www.gnu.org/licenses/gpl.html
 *
 *  @var $item
*/

$pagesArr = $this->pages->find("matrix.select_widget=$item->id");
$icon = $item->isHidden() || $item->isUnpublished() ? "circle-o" : "circle";
$publish_text = $item->isHidden() || $item->isUnpublished() ? "Publish" : "Unpublish";

?>

<div class="uk-inline uk-margin-right">

  <a href="#" class="uk-icon-button" uk-icon="more-vertical"></a>

  <div uk-drop="mode: click;pos: right-center" class="uk-drop uk-drop-right-center" style="width: auto;">
    <div class="ivm-drop-menu uk-text-left uk-animation-slide-right-medium" style="animation-duration: 0.15s;">
      <ul class="uk-nav uk-nav-default" uk-nav>

        <!-- Edit -->
        <li>
          <a href="<?= $helper->pageEditLink($item->id) ?>">
            <i class="fas fa-pen-alt uk-text-emphasis"></i>
            Edit
          </a>
        </li>

        <!-- View -->
        <?php if($config->debug == true || $user->isSuperuser()) : ?>
        <li>
          <a href="<?= $pages->get("template=widgets")->url ?>?id=<?= $item->id ?>" target="_blank">
            <i class="fas fa-eye"></i>
            Preview
          </a>
        </li>
        <?php endif;?>

        <!-- Publish / Unpublish -->
        <li>
          <a href="#" class="ivm-ajax-button" data-id="<?= $item->id ?>" data-action="publish">
            <i class="ivm-drop-menu-icon uk-text-success fa fa-<?= $icon ?>"></i>
            <span class="ivm-publish-text"><?= $publish_text ?></span>
          </a>
        </li>

        <!-- Delete -->
        <li>
          <?php
            if
            (
              (($this_module->delete_in_use == "1" && !in_array($item->id, $this_module->protected_widgets))
              || (!in_array($item->id, $this_module->protected_widgets) && $this_module->delete_in_use == "2" && $pagesArr->count < 1))
            )
          :?>
          <a href="<?= $helper->actionURL("trash", $item->id) ?>" onclick="modalConfirm()">
            <i class="ivm-in-drop-icon fas fa-trash uk-text-danger"></i>
            Trash
          </a>
          <?php endif; ?>

          <?php if($this_module->delete_in_use == "2" && $pagesArr->count > 0) : ?>
            <span class="uk-text-muted" title='This widget is in use and cant be deleted' uk-tooltip>
              <i class="ivm-in-drop-icon fas fa-trash"></i>
              Trash
            </span>
          <?php endif;?>

          <?php if(in_array($item->id, $this_module->protected_widgets) && ($pagesArr->count < 1 || $this_module->delete_in_use == "1")) :?>
            <span class="uk-text-muted" title='This widget is protected and cant be deleted' uk-tooltip>
              <i class="ivm-in-drop-icon fas fa-trash"></i>
              Trash
            </span>
          <?php endif;?>
        </li>

      </ul>
    </div>
  </div>

</div>
