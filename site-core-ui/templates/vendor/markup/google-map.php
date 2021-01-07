<?php namespace ProcessWire;
/**
 *  Google Map Markup
 *  Display google map by providing lat and lng or by address.
 *  If lat and lng are provided, address will be ignored,
 *  otherwise adddress will be used to center the map.
 *
 *  @var id
 *
 *  @var string $address
 *  @var string $lat
 *  @var string $lng
 *
 *  @var string|integer $zoom
 *  @var integer $height
 *
 *  @var string $icon - image url
 *  @var string $map_style - map style file name
 *
*/

$address        = !empty($address) ? $address : siteInfo("address");
$lat            = !empty($lat) ? $lat : "";
$lng            = !empty($lng) ? $lng : "";
$zoom           = !empty($zoom) ? $zoom : "14";
$icon           = !empty($icon) ? $icon : "";
$map_style      = !empty($map_style) ? $map_style : "";

$id         = !empty($id) ?  $id : "map";
$class      = !empty($class) ? " $class" : "";
$style      = "width:100%;";
$height     = !empty($height) ? $height : "400";

switch ($height) {
    case 'auto':
        $height = $height;
        break;
    case '100%':
        $height = $height;
        $class .= " uk-height-1-1";
        $style .= "min-height:100%";
        break;
    default:
        $height = $height."px";
        break;
}

?>

<script>

  /**
   *  Run initMap callback on window load.
   *  Callback is defined on google maps api script url
   *
   */
  window.initMap = function(){

    /**
     *  Init Google Map
     *  Run this fucntion to init the map. You need to provide lat and lng.
     *  @var myLat
     *  @var myLng
     *
     */
    function initGoogleMap(myLat, myLng) {

      var location = {lat: myLat, lng: myLng};

      var map = new google.maps.Map(document.getElementById('<?= $id ?>'), {
        center: location,
        zoom: <?= $zoom ?>,
        draggable: true,
        scrollwheel: false,
        fullscreenControl:true,
        zoomControl: true,
        mapTypeControl: true,
        streetViewControl: true,
        <?php if($map_style != "" && $map_style != "default"):?>
          styles: <?php include("./../lib/map-styles/{$map_style}.php");?>
        <?php endif;?>
      });
      var marker = new google.maps.Marker({
        position: location,
        map: map,
        <?php if($icon != ""):?>
          icon: '<?= $icon ?>',
        <?php endif;?>
      });

    }

    /**
     *  Init Google Map By Address
     *  Get @var lat and @var lng using google geocoder.
     *  Then run the @function initGoogleMap() to init the map with resulting lat and lng
     *
     */
    function initMapByAddress(my_address) {

      var geocoder;
      geocoder = new google.maps.Geocoder();

      geocoder.geocode({'address': my_address}, function(results, status) {

        if (status == 'OK') {
          thisLat = results[0].geometry.location.lat();
          thisLng = results[0].geometry.location.lng();
          initGoogleMap(thisLat, thisLng); // run the function with the data we got
        } else {
          console.log('Geocode was not successful for the following reason: ' + status);
        }

      });

    }

    <?php if($lat != "" && $lng != "") :?>
      initGoogleMap(<?= $lat ?>, <?= $lng ?>);
    <?php else :?>
      initMapByAddress("<?= $address ?>");
    <?php endif;?>

  }

</script>

<div id="<?= $id ?>" class="tm-google-map<?= $class ?>" style="height:<?= $height ?>;width:100%;<?= $style ?>"></div>
