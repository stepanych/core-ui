<?php

$fields = [
  "heading" => [
    "type" => "heading",
    "title" => "Kreativan Forms",
    "class" => "uk-h4 uk-heading-line",
  ],
  "text_field" => [
    "type"        => "text",
    "label"       => "My Text Field",
    "value"       => "",
    "placeholder" => "Text field placeholder",
    "required"    => "true",
    "width"       => "1-2",
  ],
  "options_field" => [
    "type"   => "select",
    "label"  => "My Field",
    "value"  => "",
    "options" => ["Option 1", "Option 2", "Option 3"],
    "required"    => "true",
  ],
];

$options = [
  "action"  => "./", // where form should be submited?
  "labels"  => "true", // show/hide labels
  "captcha" => "true", // include number captcha
  "submit_name" => "submit", // submit button name
  "submit_title" => "Submit", // submit button text
  "submit_style" => "primary", // submit button style: default|primary|secondary
  "css_class" => "", // form css class
  "css_id" => "my-form", // form css ID
  "grid_size" => "medium", // grid size, space between fields: small|medium|large
  "alert_type" => "", // override module alert type setting: alert|modal_alert|notification
];

//
// Render form
//
echo $modules->get("KreativanForms")->renderForm($fields, $options);

//
// Send Email
//
$modules->get("KreativanForms")->sendEmail([
  "submit_name" 			=> "submit", // submit button name
  "admin_email" 			=> "my_email@email.com", // email address to send submissions to
  "email_field" 			=> "email", // email field name that will be used as "Email From"
  "subject"     			=> "Email subject text...",
  "message" 					=> __("Email has been sent, thanks for your time!"),
  "redirect_url" 			=> $page->url, // redirect after form submit
]);
