import 'dart:convert';
import 'models/location.dart';



import 'package:http/http.dart' as http;


class LocationIdRequestFailure implements Exception{

}

class MetaWeatherApiClient{
  const MetaWeatherApiClient(http.Client httpClient) 
  : assert(httpClient != null),
    _httpClient = httpClient;

  
  final http.Client _httpClient;
  static const _baseUrl = 'www.metaweather.com';

  Future locationSearch(String query) async {
    final locationRequest = Uri.https(_baseUrl, '/api/location/search',{
      'query':query
      });
      final locationResponse = await _httpClient.get(locationRequest);

      if(locationResponse.statusCode != 200){
        throw LocationIdRequestFailure();
      }

      final locationJson = json.decode(locationResponse.body) as List;
      if (locationJson?.isNotEmpty == true){
        // parse the result and return
        return Location.fromJson(
          locationJson.first
          
        );
      } else{
        return null;
      }
    }
  
}