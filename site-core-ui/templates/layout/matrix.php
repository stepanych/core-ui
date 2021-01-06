<?php namespace ProcessWire;
$i = 1;
$matrix = !empty($matrix) ? $matrix : $page->matrix;

if(!empty($matrix) && $matrix->count) {

  foreach($matrix as $item) {

    $n = $i++;

    echo "<div id='section-{$n}' class='uk-margin-medium'>";

    if($item->type == "widget") {

      if(!empty($item->headline)) {
        echo "<h2 class='tm-headline'>{$item->headline}</h2>";
      }

      if($item->select_widget != "") {
        echo "<div class='tm-widget-{$item->select_widget->template}'>";
        renderWidget($item->select_widget);
        echo "</div>";
      }

    } elseif($item->type == "editor") {

      echo $item->body;

    }

    echo "</div>";

  }

}
