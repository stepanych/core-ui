<?php namespace ProcessWire;
/**
 * Initialization file for template files
 *
 * This file is automatically included as a result of $config->prependTemplateFile
 * option specified in your /site/config.php.
 *
 * You can initialize anything you want to here. In the case of this beginner profile,
 * we are using it just to include another file with shared functions.
 *
 */

include_once("./vendor/helpers/func.php");
include_once("./vendor/helpers/cms.php");
include_once("./vendor/helpers/fields.php");
include_once("./vendor/helpers/render.php");
include_once("./vendor/helpers/media.php");
include_once("./vendor/helpers/date-time.php");

$helper = $modules->get("KreativanHelper");
$settings = $modules->get("KreativanSettings");

/**
 *  Global Settings
 *  using setting() functions API
 *
 */
setting([
  "lang" => $settings->default_lang,
  "isMultiLang" => $helper->isMultiLang(),
  "is_webp" => (strpos($_SERVER['HTTP_ACCEPT'], 'image/webp' ) !== false) ? true : false,
]);

//
// Translator
//
if($modules->isInstalled("Translator")) {
  $translator = $modules->get("Translator");
  $translator_lang_name = !empty($user->language) ? $user->language->name : "default";
  wireLangReplacements($translator->array($translator_lang_name));
}
