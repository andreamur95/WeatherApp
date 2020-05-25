import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

enum LocationType{
  @JsonValue('City')
  city,
  @JsonValue('Region')
  region,
  @JsonValue('State')
  state,
  @JsonValue('Province')
  province,
  @JsonValue('Country')
  country,
  @JsonValue('Continent')
  continent,
}

@JsonSerializable()
class Location{
  final String title;
  final LocationType locationType;
  final Latlng latlng;
  final int woeid;
  
  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  const Location({
   @required this.title, 
   @required this.locationType, 
   @required this.latlng, 
   @required this.woeid
  });
  
}
@JsonSerializable()
class Latlng{
  final double latitude;
  final double longitude;
  
  const Latlng({
    @required this.latitude, 
    @required this.longitude,
    });
  
  factory Latlng.fromJson(String json){
    assert(json != null);
    final parts = json.split(',');
    assert(parts.length == 2);
    return Latlng(
        latitude: double.tryParse(parts[0]),
        longitude: double.tryParse(parts[1]));
  }
  
  
}