<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
   <style>
      html, body {
        height: 100%;
        width:760px;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 50%;
      }
    </style>
</head>
<body>
   <div id="map"></div>
    <script>
function initMap() {
  var mine = new google.maps.LatLng(37.5599154, 126.9211886);
  var map = new google.maps.Map(document.getElementById('map'), {
	center: mine,
    zoom: 18
  });
  var coordInfoWindow = new google.maps.InfoWindow();
  coordInfoWindow.setContent(createInfoWindowContent(mine, map.getZoom()));
  coordInfoWindow.setPosition(mine);
  coordInfoWindow.open(map);
}
function createInfoWindowContent(latLng, zoom) {
  return [
    'LatLng: ' + latLng,
  ].join('<br>');
}
    </script>
    <script async defer
         src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAcBTfk9T0QmITCNhZ81pcUzu_mvMo7-Ps
		&signed_in=true&callback=initMap">
    </script>
  <iframe width="100%" height="600px"  frameborder="0" scrolling="no" name="link">
  </iframe>
    
</body>
</html>