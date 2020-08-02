<?php
/**
 *  Admin TABS
 *
*/

?>

<ul class="uk-tab uk-position-relative">

  <li class="<?= ($page_name == "main") ? "uk-active" : ""; ?>">
    <a href="<?= $page->url ?>">
      Site
    </a>
  </li>

  <li class="<?= ($page_name == "options") ? "uk-active" : ""; ?>">
    <a href="<?= $page->url ?>options">
      Options
    </a>
  </li>

  <li class="<?= ($page_name == "scripts") ? "uk-active" : ""; ?>">
    <a href="<?= $page->url ?>scripts">
      Scripts
    </a>
  </li>

  <?php if($this_module->vendor()) :?>
    <li class="<?= ($page_name == "vendor") ? "uk-active" : ""; ?>">
      <a href="<?= $page->url ?>vendor">
        Vendor
      </a>
    </li>
  <?php endif; ?>  

  <?php if($page_name != "vendor") :?>
    <li>
      <a href="#"
        data-form="#settings-form"
        data-action="save_<?= $page_name ?>"
        onclick="formSubmit()"
      >
        <i class="fas fa-save"></i>
      </a>
    </li>
  <?php endif;?>

</ul>
