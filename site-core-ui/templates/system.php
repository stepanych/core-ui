<?php namespace ProcessWire;
if(!$user->isSuperuser() && !$config->debug) throw new Wire404Exception();
include('./vendor/_head.php');?>

<div class="uk-section">
  <div class="uk-container">
    <?php
      if($input->urlSegment1 == "forms") {
        render("vendor/preview/forms.php");
      } elseif($input->urlSegment1 == "widgets") {
        render("vendor/preview/widgets.php");
      } else {
        render("vendor/preview/web-elements.php");
      }
    ?>
  </div>
</div>

<?php include('./vendor/_foot.php'); ?>
