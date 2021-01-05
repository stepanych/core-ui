<?php namespace ProcessWire;

function isSVG($string) {
  $svg = substr($string, -4);
  return ($svg === ".svg") ? true : false;
}


function evenOdd($number) {
  if ($number % 2 == 0) {
    return "even";
  } else {
    return "odd";
  }
}

/**
 *  Add Percent to a number
 *  sum = n + (( p / 100) * n )
 *  @param int $number
 *  @param int $percent
 *  @return int
 */
function addPercent($number, $percent) {
  $sum = $number + (($percent/100) * $number);
  return $sum;
}

/**
 *  Mark Keyword in a text
 *  @param string $word
 *  @param string $text
 *  @return string
 *
 */
function markWord($word, $text, $class = "uk-text-background") {

  $word_parts = explode(" ", $word);

  if(count($word_parts) > 1) {
    foreach($word_parts as $w) {
      $text = str_ireplace("$w", "<span class='$class'>$w</span>", $text);
    }
  } else {
    $text = str_ireplace("$word", "<span class='$class'>$word</span>", $text);
  }

  return $text;

}
