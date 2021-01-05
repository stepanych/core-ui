<?php namespace ProcessWire; ?>
<!DOCTYPE html>
<html lang="<?= setting("lang") ?>">

<head>

  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

	<?php if(!$config->debug && favicon("16")) :?>
    <link rel="icon" href="<?= favicon("16") ?>" type="image/png" sizes="16x16">
  <?php endif;?>
  <?php if(!$config->debug && favicon("32")) :?>
    <link rel="icon" href="<?= favicon("32") ?>" type="image/png" sizes="32x32">
  <?php endif;?>
  <?php if(!$config->debug && favicon("apple")) :?>
    <link rel="apple-touch-icon" href="<?= favicon("apple") ?>">
  <?php endif;?>

	<?php
		render("vendor/_assets.php");
		render("vendor/_meta.php");
		render("vendor/_js.php");
    echo $settings->scripts_in_head;
	?>


</head>

<body id="<?= $page->template ?>-tmpl">

  <?php
    echo $settings->scripts_in_body;
  ?>

  <div id="wrapper" class="uk-offcanvas-content">

    <?php
      render("layout/mobile-header.php");
    ?>

    <div id="header" class="uk-visible@l">
    	<?php
    		render("layout/header.php");
    	?>
    </div>

    <div id="main" uk-height-viewport="expand: true">
