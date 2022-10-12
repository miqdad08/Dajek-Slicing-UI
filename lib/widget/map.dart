import 'dart:async';

import 'package:dajek/helper/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../app/routes/app_pages.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  var urlTemplate =
      "https://api.mapbox.com/styles/v1/miqdad08/cl93npgiz00at15quwb1e05z8/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWlxZGFkMDgiLCJhIjoiY2t0eHVoZ3VlMnIwcTJvcGl4aDcwdjhkbSJ9.GiV9FsAYUjfRo_IdpWoP3w";
  var subdomains = ['a', 'b', 'c'];
  var center = LatLng(-6.28415, 106.85442);
  var accessToken =
      "pk.eyJ1IjoibWlxZGFkMDgiLCJhIjoiY2t0eHVoZ3VlMnIwcTJvcGl4aDcwdjhkbSJ9.GiV9FsAYUjfRo_IdpWoP3w";
  var id = "mapbox.mapbox-streets-v8";

  var startPoint = LatLng(-6.28340, 106.85522);
  var endPoint = LatLng(-6.28441, 106.85361);

  var startPointVisible = false;
  var endPointVisible = true;

  driverPickup()async{
    var duration = Duration(seconds: 3);
    Timer(duration, (){
      setState(() {
        endPointVisible = false;
      });
    });
  }

  tripOver()async{
    var duration = Duration(seconds: 6);
    Timer(duration, (){
      setState(() {
        startPointVisible = true;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    driverPickup();
    tripOver();
  }

  var marker = <LatLng>[
    LatLng(-6.28345, 106.85522),
    LatLng(-6.28396, 106.85525),
    LatLng(-6.28438, 106.85403),
    LatLng(-6.28478, 106.85394),
    LatLng(-6.28477, 106.85362),
    LatLng(-6.28441, 106.85361),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: FlutterMap(
        options:
            MapOptions(center: center, zoom: 50.0, maxZoom: 18, minZoom: 6),
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
                strokeWidth: 7.0,
                color: darkGrey1,
              ),
            ],
          ),
          MarkerLayerOptions(markers: [
            Marker(
                width: 100,
                height: 100,
                point: startPoint,
                builder: (context) => Stack(
                      children: [
                        Visibility(
                          visible: startPointVisible,
                            child: Image.asset(
                          point,
                          width: 100,
                        )),
                        Positioned(
                          top: 35,
                          left: 38,
                          child: Icon(
                            Icons.location_on,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ],
                    ))
          ]),
          MarkerLayerOptions(markers: [
            Marker(
                width: 100,
                height: 100,
                point: endPoint,
                builder: (context) => Stack(
                  children: [
                    Visibility(
                        visible: endPointVisible,
                        child: Image.asset(
                          point,
                          width: 100,
                        )),
                    Positioned(
                      top: 35,
                      left: 38,
                      child: Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ))
          ]),
        ],
      )),
    );
  }
}



class MapWidgetWoMarker extends StatefulWidget {
  const MapWidgetWoMarker({Key? key}) : super(key: key);

  @override
  State<MapWidgetWoMarker> createState() => _MapWidgetWoMarkerState();
}

class _MapWidgetWoMarkerState extends State<MapWidgetWoMarker> {
  var urlTemplate =
      "https://api.mapbox.com/styles/v1/miqdad08/cl93npgiz00at15quwb1e05z8/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWlxZGFkMDgiLCJhIjoiY2t0eHVoZ3VlMnIwcTJvcGl4aDcwdjhkbSJ9.GiV9FsAYUjfRo_IdpWoP3w";
  var subdomains = ['a', 'b', 'c'];
  var center = LatLng(-6.28415, 106.85442);
  var accessToken =
      "pk.eyJ1IjoibWlxZGFkMDgiLCJhIjoiY2t0eHVoZ3VlMnIwcTJvcGl4aDcwdjhkbSJ9.GiV9FsAYUjfRo_IdpWoP3w";
  var id = "mapbox.mapbox-streets-v8";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: FlutterMap(
        options:
            MapOptions(center: center, zoom: 50.0, maxZoom: 18, minZoom: 6),
        layers: [
          TileLayerOptions(
            subdomains: subdomains,
            urlTemplate: urlTemplate,
            additionalOptions: {
              'accessToken': accessToken,
              'id': id,
            },
          ),
        ],
      )),
    );
  }
}
