<?php namespace ProcessWire;

$menu_manager = $modules->get("MenuManager");
$navbar_align = "center";
$logo = logo();
?>

<div id="navbar" uk-sticky="show-on-up: true; animation: uk-animation-slide-top">
  <div class="uk-container">

    <nav class="uk-navbar-container uk-navbar" uk-navbar="boundary: body">

      <div class="uk-navbar-left">
        <?php if($logo) : ?>
          <a class="logo" href="<?= $pages->get("/")->url ?>">
            <img src="<?= $logo ?>" alt="<?= siteInfo("title") ?>"
              <?= isSVG($logo) ? "uk-svg" : ""; ?>
            />
          </a>
        <?php else :?>
          <div class="logo uk-h3 uk-margin-remove">
            <?= siteInfo("title") ?>
          </div>
        <?php endif;?>
      </div>

      <div class="uk-navbar-<?= $navbar_align ?>">
        <?php
          $lang_switcher = false;
          echo $menu_manager->renderNavbar(false);
        ?>
      </div>

      <div class="uk-navbar-right">
        <a href="tel: <?= siteInfo("phone") ?>" class="tm-link-normal uk-h4 uk-margin-remove  uk-text-bold">
          <?= siteInfo("phone") ?>
        </a>
      </div>


    </nav>

  </div>
</div>
