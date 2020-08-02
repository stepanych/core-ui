<?php namespace ProcessWire;
/**
 *  CMS
 *  @example console.log(cms.isMultilang)
 *
 */
$cms_array = [
  "isMultilang" => $helper->isMultiLang(),
  "ajaxUrl" => $pages->get("template=ajax")->httpURL,
];

?>

<script>
  const cms = <?= json_encode($cms_array) ?>;
</script>
