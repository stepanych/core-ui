<?php namespace ProcessWire;

// Get Less parser and main.less
$kreativan_less = $modules->get("KreativanLess");

$less_files = [
  $config->paths->templates . "less/main.less"
];

?>

<link rel="stylesheet" type="text/css" href="<?= $kreativan_less->getCssFile($less_files); ?>">

<script defer type='text/javascript' src='<?= $config->urls->templates . 'vendor/lib/uikit/js/uikit.min.js'; ?>'></script>
<script defer type='text/javascript' src='<?= $config->urls->templates . 'vendor/lib/uikit/js/uikit-icons.min.js'; ?>'></script>
<script defer type='text/javascript' src='<?= $config->urls->templates . 'vendor/lib/main.js'; ?>'></script>

<script defer src="https://maps.googleapis.com/maps/api/js?key=<?= $modules->get("FieldtypeMapMarker")->googleApiKey ?>&callback=initMap" async></script>
