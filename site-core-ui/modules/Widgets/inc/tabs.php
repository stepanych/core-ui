<?php
/**
 *  Tabs Admin UI
 *
 *  @author Ivan Milincic <kreativan@outlook.com>
 *  @copyright 2018 Kreativan
 *
 *  @var string $page_name
 *  @see includeAdminFile()
 *
*/

// TABS
$tabs_arr = [
  "main" => [
    "title" => "Widgets",
    "icon" => "",
    "url" => $page->url,
  ],
];

?>


<ul class="uk-tab uk-position-relative">

  <?php foreach($tabs_arr as $key => $value) :?>
      <li class="<?= ($page_name == $key) ? "uk-active" : ""; ?>">
          <a href="<?= $value["url"]?>">
              <?= $value["title"] ?>
          </a>
      </li>
  <?php endforeach;?>

  <li class="<?= ($page_name == "new") ? "uk-active" : "";?>">
      <a href="./new">
          <?php if($this->input->get->template) :?>
              <i class="fa fa-arrow-left"></i>
              Go Back
          <?php else :?>
              <i class="fa fa-plus-circle"></i>
              Create New
          <?php endif;?>
      </a>
  </li>

  <?PHP if($user->isSuperuser()) : ?>
  <li>
    <a href="<?= $config->urls->admin ?>module/edit?name=<?= $this_module->className() ?>&collapse_info=1" title="Module Settings" uk-tooltip>
      <i class="fas fa-cog"></i>
    </a>
  </li>
<?php endif;?>

</ul>
