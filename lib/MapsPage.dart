import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:takecare/classes/LocationMarker.dart';
import 'package:takecare/locations.dart' as locations;
import 'package:takecare/mainMenu.dart';
import 'package:uuid/uuid.dart';

class MapsPage extends StatefulWidget {
  final String cpf;

  MapsPage(this.cpf);

  @override
  _MapsPage createState() => _MapsPage(this.cpf);
}

class Map extends StatefulWidget {
  @override
 _MapState createState() => _MapState();
}

class _MapsPage extends State<MapsPage> {
  String cpf;

  _MapsPage(this.cpf);

  @override
  Widget build(BuildContext context) {
    int submit = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hospital Locations'),
          backgroundColor: Colors.blue[700],
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              if (submit == 0) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainMenu(this.cpf)));
              }
            },
          ),
        ),
        body: Map()
    ));
  }
}

Set<Marker> _createMarkers() {
  Set<Marker> _markers = {};
  var items = new List<LocationMarker>();
  items = [];
  items.add(LocationMarker(title: "Hospital Santa Joana Recife", latLng: LatLng(-8.05196, -34.89818), snippet: "R. Joaquim Nabuco, 200 - Graças, Recife - PE, 52011-906\n+55 81 3216-6666"));
  items.add(LocationMarker(title: "Hospital De Ávila", latLng: LatLng(-8.05223, -34.90691), snippet: "Av. Visc. de Albuquerque, 681 - Madalena, Recife - PE, 50610-090\n+55 81 3117-5544"));
  items.add(LocationMarker(title: "Hospital São Marcos - Diagnóstico", latLng: LatLng(-8.06237, -34.89961), snippet: "R. do Paissandú, 707 - Boa Vista, Recife - PE, 52010-000\n+55 81 3217-4690"));
  items.add(LocationMarker(title: "Hospital de Boa Viagem", latLng: LatLng(-8.10862, -34.89263), snippet: "R. Ana Camelo da Silva, 315 - Boa Viagem, Recife - PE, 51111-040\n+55 81 3325-9999"));
  items.add(LocationMarker(title: "Memorial Sao Jose", latLng: LatLng(-8.05968, -34.89719), snippet: "R. do Paissandú, 274 - Paissandu, Recife - PE, 50070-170\n+55 81 3216-2222"));
  items.add(LocationMarker(title: "R. Sen. José Henrique, 141 - Ilha do Leite, Recife - PE, 50070-460", latLng: LatLng(-8.06566, -34.89515), snippet: "R. Sen. José Henrique, 141 - Ilha do Leite, Recife - PE, 50070-460\n+55 81 3131-7400"));
  items.add(LocationMarker(title: "Galvão Andrade Lima Hospitais", latLng: LatLng(-8.05491, -34.88519), snippet: "Rua Bispo Cardoso Ayres, 147 - Soledade, Recife - PE, 50050-100\n+55 81 3222-0299"));
  items.add(LocationMarker(title: "Hospital e Maternidade Nossa Senhora do Ó", latLng: LatLng(-8.06479, -34.9141), snippet: "R. Carlos Gomes, 1050 - Prado, Recife - PE, 50751-130\n+55 81 3228-5143"));
  items.add(LocationMarker(title: "Hospital Especial Domiciliar", latLng: LatLng(-8.03701, -34.89995), snippet: "R. Cap. Sampaio Xavier, 290 - Graças, Recife - PE, 52050-210\n+55 81 2121-6161"));
  items.add(LocationMarker(title: "Hospital São Marcos-Setor de Oncologia", latLng: LatLng(-8.06263, -34.89918), snippet: "Av. Portugal, 46 - Paissandu, Recife - PE, 52010-010\n+55 81 3217-4444"));
  items.add(LocationMarker(title: "Hospital Esperança Recife", latLng: LatLng(-8.06724, -34.8946), snippet: "R. Francisco Alves, 326 - Ilha do Leite, Recife - PE, 50070-490\n+55 81 3131-7878"));
  items.add(LocationMarker(title: "Hospital São Matheus", latLng: LatLng(-8.06654, -34.89542), snippet: "Av. Frei Matias Teves, 1 - Paissandu, Recife - PE, 50070-510\n+55 81 3088-0045"));
  items.add(LocationMarker(title: "Hospital de Olhos de Pernambuco - Progresso", latLng: LatLng(-8.05913, -34.88931), snippet: "R. do Progresso, 71 - Boa Vista, Recife - PE, 50070-020\n+55 81 3302-4343"));
  items.add(LocationMarker(title: "HOPE - Hospital de Olhos de Pernambuco", latLng: LatLng(-8.06667, -34.89595), snippet: "R. Francisco Alves, 887 - Ilha do Leite, Recife - PE, 50030-230\n+55 81 3302-2121"));
  items.add(LocationMarker(title: "Real Hospital Português", latLng: LatLng(-8.06405, -34.89815), snippet: "Av. Gov. Agamenon Magalhães, 4760 - Paissandu, Recife - PE, 52010-075\n+55 81 3416-1122"));
  items.add(LocationMarker(title: "Real Hospital Português de Boa Viagem", latLng: LatLng(-8.11141, -34.89202), snippet: "Av. Conselheiro Aguiar, 2502 - Boa Viagem, Recife - PE, 51020-020\n+55 81 3416-1800"));
  items.add(LocationMarker(title: "Real Hospital Português : Neurologia", latLng: LatLng(-8.06423, -34.89861), snippet: "Av. Gov. Agamenon Magalhães, 4760 - Paissandu, Recife - PE, 52010-902\n+55 81 3416-1122"));
  items.add(LocationMarker(title: "Real Hospital Português : Hepatologia", latLng: LatLng(-8.06423, -34.89861), snippet: "Av. Gov. Agamenon Magalhães, 4760 - Paissandu, Recife - PE, 52010-902\n+55 81 3416-7391"));
  items.add(LocationMarker(title: "Real Hospital Português : Realcor Emergência do Coração", latLng: LatLng(-8.06449, -34.89875), snippet: "Av. Gov. Agamenon Magalhães, 4760 - Paissandu, Recife - PE, 52010-902\n+55 81 3416-1213"));
  items.add(LocationMarker(title: "Hospital de Câncer de Pernambuco", latLng: LatLng(-8.04128, -34.87303), snippet: "Av. Cruz Cabugá, 1597 - Santo Amaro, Recife - PE, 50040-000\n+55 81 3217-8000"));
  items.add(LocationMarker(title: "Hospital Ilha do Leite", latLng: LatLng(-8.06388, -34.89517), snippet: "R. Dr. João Asfora, 35 - Ilha do Leite, Recife - PE, 50070-430\n+55 4002-3633"));
  items.add(LocationMarker(title: "Hospital Ilha do Leite -Cardiologia", latLng: LatLng(-8.0637, -34.89533), snippet: "R. Dr. João Asfora, 35 - Ilha do Leite, Recife - PE, 50070-430"));
  items.add(LocationMarker(title: "Hospital Residência", latLng: LatLng(-8.11194, -34.906), snippet: "R. Barão de Água Branca, 529 - Imbiribeira, Recife - PE, 51160-300\n+55 81 4141-0548"));
  items.add(LocationMarker(title: "Hospital do Tricentenário", latLng: LatLng(-8.01044, -34.84434), snippet: "Rua Farias Neves - R. Dr. Farias N Sobrinho, 232 - Bairro Novo, Olinda - PE, 53120-420\n+55 81 3429-2622"));
  items.add(LocationMarker(title: "São Salvador Hospital", latLng: LatLng(-7.99513, -34.83992), snippet: "R. Eduardo de Morais, 147 - Bairro Novo, Olinda - PE, 53030-250\n+55 81 3334-1000"));
  items.add(LocationMarker(title: "Hospital São Salvador", latLng: LatLng(-7.99529, -34.83954), snippet: "Av. Pres. Getúlio Vargas, 1937 - Bairro Novo, Olinda - PE, 53030-010\n+55 81 3334-1000"));
  items.add(LocationMarker(title: "Maternidade Brites De Albuquerque", latLng: LatLng(-7.98052, -34.8586), snippet: "Av. Pan Nordestina, 4707 Santa Tereza - Tabajara, Olinda - PE, 53350-015\n+55 81 98160-5928"));
  items.add(LocationMarker(title: "Centro Médico Hospital Esperança Olinda", latLng: LatLng(-7.98758, -34.83903), snippet: "Av. Dr. José Augusto Moreira, 751 - Casa Caiada, Olinda - PE, 53130-410\n+55 81 3432-8000"));
  items.add(LocationMarker(title: "Materno Infantil 24 Horas", latLng: LatLng(-7.97925, -34.83556), snippet: "Av. Dr. José Augusto Moreira, 1241 - Casa Caiada, Olinda - PE, 53130-410\n+55 81 3432-7945"));
  items.add(LocationMarker(title: "Hospital Central Nossa Senhora Aparecida", latLng: LatLng(-7.95895, -34.87155), snippet: "Av. Rodolfo Aureliano, 976 - Vila Torres Galvão, Paulista - PE, 53403-740\n+55 81 3201-9700"));
  items.add(LocationMarker(title: "USF Amaro Branco", latLng: LatLng(-8.00981, -34.84402), snippet: "R. Cel. Cláudio Leal, 64 - Bairro Novo, Olinda - PE, 53030-280\n+55 81 3429-5476"));
  items.add(LocationMarker(title: "Spa Pronto Socorro de Olinda", latLng: LatLng(-8.00241, -34.84054), snippet: "Av. Getúlio Vargas, 1059 - Bairro Novo, Olinda - PE, 53030-010\n+55 81 3439-4330"));
  items.add(LocationMarker(title: "Saúde Samaritano", latLng: LatLng(-7.99737, -34.8399), snippet: "Av. Getúlio Vargas, 1605 - Bairro Novo, Olinda - PE, 53030-010\n+55 81 3429-9748"));
  items.add(LocationMarker(title: "Hospital Nossa Senhora do Ó", latLng: LatLng(-7.9472, -34.82641), snippet: "Av. Dr. Cláudio José Gueiros Leite, 1229 - Janga, Paulista - PE, 53437-000\n+55 81 3434-0405"));
  items.add(LocationMarker(title: "Comunidade Terapêutica Olinda - Sanatório Psiquiátrico", latLng: LatLng(-8.00774, -34.85749), snippet: "Av. Joaquim Nabuco, 1450 - Guadalupe, Olinda - PE, 53330-010\n+55 81 3429-1559"));
  items.add(LocationMarker(title: "Sanatorio Psiquiatrico De Recuperacao Ltda", latLng: LatLng(-8.00775, -34.85751), snippet: "Av. Joaquim Nabuco, 1450 - Guadalupe, Olinda - PE, 53330-010\n+55 81 3429-3462"));
  items.add(LocationMarker(title: "Centro de Saúde Jardim Fragoso", latLng: LatLng(-7.98427, -34.85285), snippet: "R. José Alexandre Carvalho - Fragoso, Olinda - PE, 53250-150\n+55 81 3439-0425"));

  for(int index = 0; index < items.length; index++) {
    String nameLoc = items[index].title;
    LatLng latLng = items[index].latLng;
    String snippet = items[index].snippet;
    _markers.add(Marker(markerId: MarkerId(nameLoc), 
      position: latLng,
        infoWindow: InfoWindow(
          title: nameLoc,
          snippet: snippet
        ),
        icon: BitmapDescriptor.defaultMarker
      ));
  }

  return _markers;
}
class _MapState extends State<Map> {

  GoogleMapController mapController;
  static const _initialPosition = LatLng(-8.05, -34.88);
  LatLng _lastPosition = _initialPosition;

  Set<Marker> _markersF = _createMarkers();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GoogleMap(initialCameraPosition: CameraPosition(target: _initialPosition, zoom: 10.0),
                onMapCreated: onCreated,
                myLocationEnabled: true,
                mapType: MapType.normal,
                compassEnabled: true,
                markers: _markersF,
                onCameraMove: _onCameraMove,
                )
      ],);
  }

  void onCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }

  void _onCameraMove(CameraPosition position) {
    setState(() {
      _lastPosition = position.target;
    });
  }

}
