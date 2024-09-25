import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  const Maps({super.key, required this.latMarker, required this.longMarker});

  final double latMarker;
  final double longMarker;
  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  var markers = HashSet<Marker>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(30.3, 31.7416666667),
          zoom: 14,
        ),
        onMapCreated: (GoogleMapController controller) {
          setState(() {
            markers.add(
              Marker(
                  markerId: const MarkerId('1'),
                  position: LatLng(widget.latMarker, widget.longMarker)),
            );
          });
        },
      ),
    );
  }
}
