<?php namespace ProcessWire;
/**
 *  Extend UserPage class
 *
 *  @var $this - use $this inside the class to get User object
 *  Use custom methods on front-end as:
 *
 *  @example: $user->myMethod()
 *
*/

class UserPage extends User {

  public function sayHello() {
    return "Hello $this->name";
  }

}
