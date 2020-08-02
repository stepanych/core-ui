<?php namespace ProcessWire;
/**
 *  Forms
 *
*/

$fields = [
  "heading_start" => [
    "type" => "heading",
    "title" => "Form Heading",
    "class" => "uk-h3",
  ],
  "text_field" => [
    "type"        => "text",
    "label"       => "Text",
    "value"       => "",
    "placeholder" => "Text field",
    "required"    => "true",
    "width"       => "1-2",
  ],
  "email_field" => [
    "type"        => "email",
    "label"       => "Email",
    "value"       => "",
    "placeholder" => "Email field",
    //"required"    => "true",
    "width"       => "1-2",
  ],
  "url_field" => [
    "type"        => "url",
    "label"       => "URL",
    "value"       => "",
    "placeholder" => "https://",
    //"required"    => "true",
    "width"       => "1-1",
  ],
  "textarea_field" => [
    "type"        => "textarea",
    "label"       => "Textarea",
    "value"       => "",
    "placeholder" => "Textarea field",
    "rows"        => "5",
    //"required"    => "true",
    "width"       => "1-1",
  ],
  "heading" => [
    "type" => "heading",
    "title" => "Form Heading",
    "class" => "uk-h4 uk-heading-line uk-margin-remove",
  ],
  "radio_field" => [
    "type"      => "radio",
    "label"     => "Radio",
    "value"     => "",
    "options"   => ["Option 1", "Option 2", "Option 3"],
    //"required"  => "true",
    "width"     => "1-1",
  ],
  "checkbox_field" => [
    "type"      => "checkbox",
    "label"     => "Checkbox",
    "value"     => "",
    "options"   => ["Option 1", "Option 2", "Option 3"],
    //"required"  => "true",
    "width"     => "1-1",
  ],
  "options_field" => [
    "type"      => "select",
    "label"     => "Select",
    "value"     => "",
    "options"   => ["Option 1", "Option 2", "Option 3"],
    //"required"  => "true",
    "width"     => "1-1",
  ],
  "heading_dt" => [
    "type" => "heading",
    "title" => "Files, Date & Time",
    "class" => "uk-h4 uk-heading-line uk-margin-remove",
  ],
  "file_field" => [
    "type"        => "file",
    "label"       => "File",
    "accept"      => ".jpg, .png",
    "placeholder" => "Select file",
    //"required"  => "true",
    "width"     => "1-1",
  ],
  "date_field" => [
    "type"          => "date",
    "label"         => "Date",
    "value"         => "",
    "placeholder" => "Select Date",
    //"required"  => "true",
    "width"     => "1-2",
  ],
  "time_field" => [
    "type"          => "time",
    "label"         => "Time",
    "value"         => "",
    "placeholder" => "Select Time",
    //"required"  => "true",
    "width"     => "1-2",
  ],
];

$options = [
  "action"  => "./forms", // where form should be submited?
  "labels"  => "true", // show/hide labels
  "captcha" => "true", // include number captcha
  "submit_name" => "submit", // submit button name
  "submit_title" => "Submit", // submit button text
  "submit_style" => "primary", // submit button style: default|primary|secondary
  "css_class" => "", // form css class
  "css_id" => "my-form", // form css ID
  "grid_size" => "small", // grid size, space between fields: small|medium|large
  "alert_type" => "", // override module alert type setting: alert|modal_alert|notification
];

//
// Send Email
//
$modules->get("KreativanForms")->sendEmail([
  "submit_name" 			=> "submit", // submit button name
  "admin_email" 			=> "my_email@email.com", // email address to send submissions to
  "email_field" 			=> "email", // email field name that will be used as "Email From"
  "subject"     			=> "Email subject text...",
  "message" 					=> __("Email has been sent, thanks for your time!"),
  "redirect_url" 			=> $page->url."forms", // redirect after form submit
]);

?>

<title>Forms</title>

<h1 class="uk-heading-medium uk-text-center uk-margin-remove">Forms</h1>
<h3 class="uk-margin-small-top uk-text-center">Built-in Forms Creator API Module</h3>

<div class="uk-width-3-5@l uk-margin-auto uk-margin-medium-top">
  <div class="uk-background-muted uk-padding">
    <?php
      echo $modules->get("KreativanForms")->renderForm($fields, $options);
    ?>
  </div>
</div>
