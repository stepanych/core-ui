<?php
if(!$user->isSuperuser()) $session->redirect($config->urls->admin);

$page->warning("This page is for development purposes only");
$page->message("This file located in: /templates/admin/development.php");

$helper = $modules->get("KreativanHelper");


if($input->get->do) {

  // Do something

  $session->redirect("./");

}

?>

<a href="./?do=1" class="uk-button uk-button-primary">
  Do it!
</a>
