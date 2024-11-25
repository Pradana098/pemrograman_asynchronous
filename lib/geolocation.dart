import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {  // 'extends' bukan 'extens'
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';
  
  @override
  void initState() {  // 'initState' bukan 'iniState'
    super.initState();  // 'initState' bukan 'iniState'
    getPosition().then((Position myPos) {  // 'getPosition' bukan 'getPostion'
      myPosition = 'Latitude: ${myPos.latitude.toString()} - Longitude: ${myPos.longitude.toString()}';  // 'longitude' bukan 'Longitude'
      setState(() {
        myPosition = myPosition;  // Ini sebenarnya tidak perlu karena nilai sama
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Current Location')),
      body: Center(child: Text(myPosition)),
    );
  }

  Future<Position> getPosition() async {  // 'getPosition' bukan 'getPostion'
    LocationPermission permission = await Geolocator.checkPermission();  // Tambahan check permission
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }
    
    return await Geolocator.getCurrentPosition();
  }
}