<?php namespace ProcessWire;

?>

<div class="footer uk-section uk-text-center">
  <div class="uk-container">
    <?php if(logo("footer")) :?>
      <img src="<?= logo("footer") ?>" alt="<?= siteInfo("title") ?>"
        style="height: 50px;"
      />
      <p class="uk-width-large@l uk-margin-auto">
        <?= siteInfo("about"); ?>
      </p>
    <?php endif;?>
  </div>
</div>

<div class="copyright uk-text-center">
  <div class="uk-container">
    Copyright © <?= date("Y") ?> <?= siteInfo("title") ?>
  </div>
</div>

<a class="uk-totop uk-visible@l z-index-9" href="#" uk-totop uk-scroll></a>
