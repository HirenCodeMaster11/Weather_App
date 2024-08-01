import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/Api%20Helper/api%20helper.dart';
import 'package:weather_app/Modal/weather%20modal.dart';

class WeatherProvider extends ChangeNotifier {
  String search ='surat';
  ApiHelper apiHelper = ApiHelper();
  WeatherModal? weatherModal;
  String weather = '';

  Future<WeatherModal?> fromMap(String city) async {
    final data = await apiHelper.fetchApi(search);
    weatherModal = WeatherModal.fromJson(data);
    return weatherModal;
  }

  void searchCity(String city) {
    search = city;
    notifyListeners();
  }

  Future<void> addFavCity(String name,String temp,String )
  async {

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  }
}
