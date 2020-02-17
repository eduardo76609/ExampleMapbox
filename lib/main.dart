import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final latLng = LatLng(6.1918377, -75.5829806);
  static double defaultZoom = 12.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("example mapbox"),
      ),
      body: Container(
        child: MapboxMap(
          initialCameraPosition: CameraPosition(target: latLng, zoom: defaultZoom),
          trackCameraPosition: true,
          compassEnabled: true,
          minMaxZoomPreference: MinMaxZoomPreference(12.0, 18.0),
          rotateGesturesEnabled: true,
          scrollGesturesEnabled: true,
          tiltGesturesEnabled: false,
          zoomGesturesEnabled: true,
          myLocationEnabled: true,
          myLocationTrackingMode: MyLocationTrackingMode.None,
        ),
      ));
  }
}