<?php namespace ProcessWire;
/**
 *  Extend HomePage class
 *
 *  @var $this - use $this inside the class to get Page object
 *
 *  use $this->wire() to access pw api method
 *  @example $this->wire('sanitizer')
 *
 *  All methods on front-end can be used as:
 *  @example $page->myMethod()
 *
*/

class HomePage extends Page {

  // use: echo $page->whoAreYou();
  public function whoAreYou() {
    return "I'm CORE UI!";
  }

  public function getMeta() {
    $date = wireDate('Y/m/d', $this->published);
    $name = $this->createdUser->name;
    return "Posted on $date by $name";
  }

}
