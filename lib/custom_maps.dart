import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatelessWidget {
  final List<Marker> markers = [
    Marker(
      width: 80.0,
      height: 80.0,
      point: const LatLng(4.6097, -74.0817), // Bogotá, D.C.
      builder: (ctx) => GestureDetector(
        onTap: () => print('Lat: , Long:'),
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.blue.withOpacity(0.5)),
        ),
      ),
    ),
    Marker(
      width: 80.0,
      height: 80.0,
      point: const LatLng(6.2518, -75.5636), // Medellín, Antioquia
      builder: (ctx) => Container(
        child: const Icon(Icons.location_pin, color: Colors.blue, size: 40),
      ),
    ),
    Marker(
      width: 80.0,
      height: 80.0,
      point: const LatLng(3.4516, -76.5318), // Cali, Valle del Cauca
      builder: (ctx) => Container(
        child: const Icon(Icons.location_pin, color: Colors.green, size: 40),
      ),
    ),
    // Agrega más marcadores según sea necesario
  ];

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: const LatLng(4.6097, -74.0817), // Centro inicial en Bogotá
        zoom: 6.0,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
          subdomains: const ['a', 'b', 'c'],
        ),
        MarkerLayer(
          markers: markers,
        ),
      ],
    );
  }
}
