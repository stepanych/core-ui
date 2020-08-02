<?php namespace ProcessWire;
/**
 *  Render Markdown code
 *  @param markdown $code
 */
function markdown($code) {
  if(wire("modules")->isInstalled("TextformatterMarkdownExtra")) {
    $textformatter = wire("modules")->get("TextformatterMarkdownExtra");
    $textformatter->format($code);
    return $code;
  } else {
    return "<code>TextformatterMarkdownExtra is missing</code>";
  }
}


/**
 *  Render UIkit alert
 *  @param string $status primary/success.warning/danger
 *  @param string $text
 *  @return html
 */
function alert($status, $text) {
  $html = "
    <div class='uk-alert uk-alert-$status' uk-alert>
      <a class='uk-alert-close' uk-close></a>
      <p>$text</p>
  </div>
  ";
  return $html;
}

/**
 *  Render UIkit notification
 *  @param string $status primary/success.warning/danger
 *  @param string 4message
 *  @param string $pos
 *  @param string|int $timeout
 *  @return html
 */
function notification($status, $message, $pos = "top-center", $timeout = "3000") {
  $script = "
    <script>
      UIkit.notification({status: '$status', message: '$message', pos: '$pos', timeout: '$timeout'})
    </script>
  ";
  return $script;
}

/**
 *  Render Star Rating
 *  Give it a rating number 4-5 and it will render the stars
 *  @param int $rating
 *  @return string|markup
 */
function renderRating($rating = 0, $class = "star", $color = "") {

  $blank = 5 - $rating;
  $stars = "";
  $html_style = ($color != "") ? "style='color: $color;'" : "";

  for($i = 0; $i < $rating; $i++) {
    $stars .= "<i class='fas fa-{$class}' $html_style></i>";
  }

  for($i = 0; $i < $blank; $i++) {
    $stars .= "<i class='far fa-{$class}' $html_style></i>";
  }

  return ($stars != "") ? "<span class='tm-rating'>$stars</span>" : false;

}
