<?php namespace ProcessWire;

// Get Less parser and main.less
$kreativan_less = $modules->get("KreativanLess");

$less_files = [
  $config->paths->templates . "less/main.less"
];

?>

<link rel="stylesheet" type="text/css" href="<?= $kreativan_less->getCssFile($less_files); ?>">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" integrity="sha256-h20CPZ0QyXlBuAw7A+KluUYx/3pK+c7lYEpqLTlxjYQ=" crossorigin="anonymous" />

<script defer type='text/javascript' src='<?= $config->urls->templates . 'vendor/lib/uikit/js/uikit.min.js'; ?>'></script>
<script defer type='text/javascript' src='<?= $config->urls->templates . 'vendor/lib/uikit/js/uikit-icons.min.js'; ?>'></script>
<script defer type='text/javascript' src='<?= $config->urls->templates . 'vendor/lib/main.js'; ?>'></script>

<script src="https://maps.googleapis.com/maps/api/js?key=<?= $modules->get("FieldtypeMapMarker")->googleApiKey ?>&callback=initMap" async defer></script>
