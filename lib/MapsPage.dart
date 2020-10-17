import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:takecare/locations.dart' as locations;
import 'package:takecare/mainMenu.dart';

class MapsPage extends StatefulWidget {

  final String cpf;

  MapsPage(this.cpf);

  @override
  _MapsPage createState() => _MapsPage(this.cpf);
}

class _MapsPage extends State<MapsPage> {
  String cpf;

  _MapsPage(this.cpf);
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _markers[office.name] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    int submit = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Google Office Locations'),
          backgroundColor: Colors.green[700],
          leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            if(submit == 0) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainMenu(this.cpf))
              );
            }
          },
        ),
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: const LatLng(0, 0),
            zoom: 2,
          ),
          markers: _markers.values.toSet(),
        )
      )
    );
  }
}