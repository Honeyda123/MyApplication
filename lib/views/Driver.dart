import 'package:firstproject/components/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

/// [SBottomNavigationBar] class describe the [BottomNavigationBar] widget details code
/// ***************************************************************
class Driver extends StatefulWidget {
  const Driver({Key? key}) : super(key: key);

  @override
  State<Driver> createState() => _SBottomNavigationBarState();
}

class _SBottomNavigationBarState extends State<Driver> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Home',
              style: TextStyle(
                color: Colors.black,
              ), // Couleur du titre
            ),
            backgroundColor: Colors
                .deepOrangeAccent, // Couleur transparente pour un aspect sans bordure
            elevation: 20.00, // Supprimer l'ombre de l'appBar
            centerTitle: true,
          ),
          body: FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(33.892166, 9.561555499999997),
              initialZoom: 5.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
            ],
          ),
          bottomNavigationBar: customNavBar(
            index: 0,
          )),
    );
  }
}
