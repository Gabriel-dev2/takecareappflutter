import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationMarker {
  String title;
  LatLng latLng;
  String snippet;

  LocationMarker({this.title, this.latLng, this.snippet});

  LocationMarker.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    latLng = json['latLng'];
    snippet = json['snippet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['latLng'] = this.latLng;
    data['snippet'] = this.snippet;
    return data;
  }
}