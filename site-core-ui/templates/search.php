<?php namespace ProcessWire;
include('./vendor/_head.php');

$i = 0;

// Limit number of results per page
$limit = ($page->limit_items != "") ? $page->limit_items : "12";
$count = 0;

// look for a GET variable named 'q' and sanitize it
$q = $sanitizer->text($input->get->q);

if($q) {

  // Sanitize for placement within a selector string. This is important for any
	// values that you plan to bundle in a selector string like we are doing here.
	$q = $sanitizer->selectorValue($q);

	$input->whitelist('q', $q);

	// Search the search_index field (search engine module)
	$selector = "search_index~%=$q, sort=-created";

	// Count
	$count = $pages->count($selector);

	// If user has access to admin pages, lets exclude them from the search results.
	if($user->isLoggedin()) $selector .= ", has_parent!=2";

	// add limit
	$selector .= ", limit=$limit";

	// Find pages that match the selector
	$matches = $pages->find($selector);

}

?>

<div class="uk-background-muted uk-padding-large">
  <div class="uk-container uk-container-small">
    <form action="./" method="GET">
      <div class="uk-grid uk-grid-small" uk-grid>
        <div class="uk-width-expand@m">
          <input
            class="uk-input uk-form-large"
            type="text"
            name="q"
            placeholder="<?= __("Enter a search term...") ?>"
            value="<?= $q ?>"
          />
        </div>
        <div class="uk-width-auto@m">
          <input class="uk-button uk-button-primary uk-button-large" type="submit" name="submit" value="<?= __("Search") ?>" />
        </div>
      </div>
    </form>
  </div>
</div>

<div class="uk-section">
  <div class="uk-container uk-container-small">

    <?php if($q) : ?>
      <p class="uk-text-large uk-heading-divider">
        <?= $count ?>
        <?= __("Search results for") ?>: <b><?= $q ?></b>
      </p>
    <?php endif;?>

    <?php if(!empty($matches) && $matches->count) :?>
      <div id="search-results">
          <?php foreach($matches as $item) :?>

            <?= ($i++ > 0) ? "<hr />" : ""?>

            <div>

              <h3 class="uk-margin-small">
                <a class="tm-link-normal" href="<?= $item->url ?>">
                  <?= $item->title ?>
                </a>
              </h3>

              <p class="uk-text-meta uk-margin-small">
                <?= markWord($q, $item->url); ?>
              </p>

              <p class="uk-margin-small">
                <?php
                  $text = !empty($item->text) ? $item->text : $item->body;
                  $text = $sanitizer->truncate($text, 240);
                  echo markWord($q, $text);
                ?>
              </p>

            </div>
          <?php endforeach;?>
      </div>

      <?php
        render("markup/pagination.php", [
          "items" => $matches,
          "class" => "uk-flex-center ukmargin-medium-top",
        ]);
      ?>

    <?php else :?>

      <h3 class="uk-text-muted uk-margin-remove uk-text-center">
        <?= __("No search results") ?>
      </h3>

    <?php endif; ?>

  </div>
</div>

<?php include('./vendor/_foot.php'); ?>
