<?php namespace ProcessWire;
/**
 *  Get Field Object
 *  in template context
 *  @param string $field_name
 *  @param string|object $tmpl
 *  @param string $option
 *  @example getField("property_type", "property")->label
 *  @example getField("property_type", "property", "label") // for multilanguage
 */
function getField($field_name, $tmpl, $option = "") {

  $tmpl = wire("templates")->get($tmpl);

  if(gettype($tmpl) == "string") {
    $t = wire("templates")->get("$tmpl");
  } else {
    $t = $tmpl;
  }

  if($option != "") {
    $lang = wire("user")->language;
    $multilang_option = ($lang && $lang->name != "default") ? "$option{$lang}" : "$option";
    $field = $t->fields->getFieldContext("$field_name")->$multilang_option;
  } else {
    $field = $t->fields->getFieldContext("$field_name");
  }

  return $field;
}


/**
 *  Get FieldtypeOptions
 *  Multilanguage Option Values and labels
 *  @param string $field_name
 *  @return array $value => $label
 */
function getFieldOptions($field_name) {

  $options_arr = [];
  $get_field = wire("fields")->get($field_name);
  $field_options = $get_field->type->getOptions($get_field);
  foreach($field_options as $option) {
    $user = wire("user");
    $multilang_title = ($user->language->name != "default") ? "title{$user->language}" : "title";
    $options_arr[$option->id] = $option->$multilang_title;
  }

  return $options_arr;

}
