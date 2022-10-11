import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {

  var urlTemplate = "https://api.mapbox.com/styles/v1/miqdad08/cl93npgiz00at15quwb1e05z8/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWlxZGFkMDgiLCJhIjoiY2t0eHVoZ3VlMnIwcTJvcGl4aDcwdjhkbSJ9.GiV9FsAYUjfRo_IdpWoP3w";
  var subdomains = ['a', 'b', 'c'];
  var center = LatLng(-6.28491, 106.85504);
  var accessToken = "pk.eyJ1IjoibWlxZGFkMDgiLCJhIjoiY2t0eHVoZ3VlMnIwcTJvcGl4aDcwdjhkbSJ9.GiV9FsAYUjfRo_IdpWoP3w";
  var id = "mapbox.mapbox-streets-v8";

  var marker = <LatLng>[
    LatLng(-6.28345, 106.85522),
    LatLng(-6.28396, 106.85513),
    LatLng(-6.28440, 106.85403),
    LatLng(-6.28474, 106.85394),
    LatLng(-6.28477, 106.85362),
    LatLng(-6.28441, 106.85361),
  ];


  void searchDriver(){

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
          child: FlutterMap(
            options: MapOptions(
                center: center,
                zoom: 50.0,
                maxZoom: 18,
                minZoom: 6),
            layers: [
              TileLayerOptions(
                subdomains: subdomains,
                urlTemplate: urlTemplate,
                additionalOptions: {
                  'accessToken': accessToken,
                  'id': id,
                },
              ),
              PolylineLayerOptions(
                polylines: [
                  Polyline(
                    points: marker,
                    strokeWidth: 4.0,
                    color: Colors.red,
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
}