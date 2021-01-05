<?php namespace ProcessWire;
include('./vendor/_head.php');?>

<div class="uk-section">
  <div class="uk-container">

    <h1><?= $page("headline|title"); ?></h1>

    <?php
      render("markup/breadcrumbs.php" ,[
        "align" => "left",
      ]);
    ?>

    <?php
      echo $page->body;
    ?>

  </div>
</div>

<?php include('./vendor/_foot.php'); ?>
