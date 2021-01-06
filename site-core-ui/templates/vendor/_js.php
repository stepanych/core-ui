<?php namespace ProcessWire;
/**
 *  CMS
 *  @example console.log(cms.isMultilang)
 *
 */
$cms_array = [
  "debug" => $config->debug,
  "isMultilang" => setting("isMultiLang"),
  "ajaxUrl" => $pages->get("template=ajax")->httpURL,
  "isWebp" => setting("is_webp"),
];

?>

<script>
  const cms = <?= json_encode($cms_array) ?>;
</script>
