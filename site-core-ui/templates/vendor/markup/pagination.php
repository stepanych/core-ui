<?php namespace ProcessWire;
/**
 *  Pagination
 *
 *  @var PageArray $items
 *  @var string $class
 *  @var string $urlSegment
*/

$items = !empty($items) ? $items : "";
$class = !empty($class) ? $class : "";
$urlSegment = !empty($urlSegment) ? $urlSegment : "";

if($items != "") {

  $pagination = $items->renderPager(array(
    'nextItemLabel'                 => '<i class="fas fa-arrow-right"></i>',
    'previousItemLabel'             => '<i class="fas fa-arrow-left"></i>',
    'nextItemClass'                 => "pagination-next",
    'previousItemClass'             => "pagination-prev",
    'lastItemClass'                 => "pagination-last",
    'currentItemClass'              => "uk-active uk-text-bold",
    'listMarkup'                    => "<ul class='uk-pagination $class'>{out}</ul>",
    'itemMarkup'                    => "<li class='{class} uk-margin-remove'>{out}</li>",
    'linkMarkup'                    => "<a href='{url}{$urlSegment}'><span>{out}</span></a>"
  ));

  echo $pagination;

}
