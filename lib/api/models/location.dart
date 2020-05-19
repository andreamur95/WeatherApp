import 'package:flutter/foundation.dart';

enum LocationType{
  city,
  region,
  state,
  province,
  country,
  continent,
}

class Location{
  final String title;
  final LocationType locationType;
  final Latlng latlng;
  final int woeid;
  
  const Location({
   @required this.title, 
   @required this.locationType, 
   @required this.latlng, 
   @required this.woeid
  });
  
}

class Latlng{
  final double latitude;
  final double longitude;
  
  const Latlng({
    @required this.latitude, 
    @required this.longitude,
    });
  
}