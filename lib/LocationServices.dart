import 'package:location/location.dart';
class LocationServices {
  Future<Map<String,double>> currentLocation () async{
    var currentLocation = <String, double>{};
    var location = new Location();
    try{
      currentLocation = (await location.getLocation) as Map<String, double>;
    }
    catch (e) {
      currentLocation = null;
    }

  }
}