<?php namespace ProcessWire;
/**
 *  Ajax - test
 *  this file ins included in ajax page
 */

if ($input->post->test_ajax) {

  $data = [
    "status" => "success",
    "message" => "Ajax test is OK",
    "url" => $pages->get("template=ajax")->httpUrl,
    "file" => "/vendor/ajax/test.php",
  ];

  header('Content-type: application/json');
  echo json_encode($data);

  exit();
}
