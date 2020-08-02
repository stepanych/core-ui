<?php namespace ProcessWire;
$menu_manager = $modules->get("MenuManager");
$mobile_logo = logo("mobile") ? logo("mobile") : logo();
?>

<div id="mobile-menu" uk-offcanvas="overlay: true">
  <div class="uk-offcanvas-bar uk-flex uk-flex-column">
    <button class="uk-offcanvas-close" type="button" uk-close></button>
    <?php
      echo $menu_manager->renderMobileMenu("center", true);
    ?>
  </div>
</div>


<div id="mobile-header" class="uk-hidden@l uk-flex uk-flex-center uk-flex-middle">

  <a class="mobile-menu-button uk-position-center-left z-index-999" href="#mobile-menu" uk-toggle>
    <span uk-icon="icon: menu; ratio: 1.3"></span>
  </a>

  <a class="mobile-logo" href="<?= $pages->get("/")->url ?>">
    <?php if(!empty($mobile_logo)):?>
      <img src="<?= $mobile_logo ?>"
        alt="Mobile Logo"
        <?= (isSVG($mobile_logo) == "svg") ? "uk-svg" : ""; ?>
      />
    <?php else: ?>
      <div class="uk-h4 uk-margin-remove uk-inline">
        Mobile Logo
      </div>
    <?php endif;?>
  </a>

</div>
