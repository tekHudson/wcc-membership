function init_map() {
    var var_location = new google.maps.LatLng(37.30619, -121.87829);

    var var_mapoptions = {
      center: var_location,
      zoom: 11
    };

    var var_marker = new google.maps.Marker({
        position: var_location,
        map: var_map,
        title:"West Coast Cigars"});

    var var_map = new google.maps.Map(document.getElementById("map-container"), var_mapoptions);

    var_marker.setMap(var_map);

}

$(document).ready(function(e, data){
    if ($("#map-container").length != 0) {
        init_map();
    }
});
