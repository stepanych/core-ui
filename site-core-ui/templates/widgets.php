<?php namespace ProcessWire;
if(!$user->isSuperuser() && !$config->debug) throw new Wire404Exception();
include('./vendor/_head.php');?>

<title>Widgets</title>

<div class="uk-background-muted uk-padding-large">
  <div class="uk-container uk-text-center">
    <h1 class="uk-heading-medium uk-margin-medium">Widgets</h1>
    <form action="./" method="GET">
      <select class="uk-select uk-form-large uk-form-width-large" name="id" onchange="this.form.submit()">
        <option value="">- Select -</option>
        <?php foreach($page->children() as $option) :?>
          <option value="<?= $option->id ?>"
            <?= ($input->get->id == $option->id) ? "selected" : ""; ?>
          >
            <?= $option->title ?>
          </option>
        <?php endforeach;?>
      </select>
    </form>
  </div>
</div>

<div class="uk-section">
  <div class="uk-container">
    <?php if($input->get->id) :?>
      <?php
        $id = $sanitizer->int($input->get->id);
        $widget = $pages->get($id);
      ?>
      <div class="tm-widget-<?= $widget->template ?>">
        <?php
          renderWidget($widget);
        ?>
      </div>
    <?php else :?>
      <div class="uk-h2 uk-margin-remove uk-text-center uk-text-muted">
        No widget selected
      </div>
    <?php endif; ?>
  </div>
</div>

<?php include('./vendor/_foot.php'); ?>
