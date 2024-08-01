import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/Api%20Helper/api%20helper.dart';
import 'package:weather_app/Modal/weather%20modal.dart';

class WeatherProvider extends ChangeNotifier {
  String search ='surat';
  ApiHelper apiHelper = ApiHelper();
  WeatherModal? weatherModal;
  List<String> weather = [];

  Future<WeatherModal?> fromMap(String city) async {
    final data = await apiHelper.fetchApi(search);
    weatherModal = WeatherModal.fromJson(data);
    return weatherModal;
  }

  void searchCity(String city) {
    search = city;
    notifyListeners();
  }

  Future<void> addFavCity(String name,String temp,String type)
  async {
    String data = '$name-$temp-$type';
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    weather.add(data);
    // weather.clear();
    sharedPreferences.setStringList('weather',weather);
  }
  Future<void> getFavouriteWeather()
  async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    weather = sharedPreferences.getStringList('weather') ?? <String>[];
    notifyListeners();
  }

  WeatherProvider()
  {
    getFavouriteWeather();
  }
}
