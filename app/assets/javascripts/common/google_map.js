function gMap () {
  if ($('#map').length == 0) {
    return false;
  }

  // 住所
  let location = { lat: 35.703315, lng: 139.755527 };
  let map = new google.maps.Map(document.getElementById('map'), { zoom: 15, center: location });

  //google mapsインスタンス化
  let transitLayer = new google.maps.TransitLayer();
  transitLayer.setMap(map);

  // マーカーを押したときにポップアップで出る情報
  let contentString = '住所：東京都文京区本郷1-4-4 水道橋ビル6階';
  let infowindow = new google.maps.InfoWindow({content: contentString});

  //マーカーの実体を作る
  let marker = new google.maps.Marker({position:location,map: map,title: contentString});

  //マーカーをクリックできるようにする
  marker.addListener('click', function() {
    infowindow.open(map, marker);
  });
}
