import 'package:flutter/material.dart';
import 'package:flutter_application_1/modle/wheater_modle.dart';
import 'package:flutter_application_1/service/location_service.dart';
import 'package:flutter_application_1/service/weather_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherModel? weather;
  bool isLoading = true;

  Future<void> fetchWeather() async {
    setState(() {
      isLoading = true;
    });

    var position = await LocationService.getCurrentLocation();
    if (position != null) {
      var weatherData = await WeatherService.getWeatherData(position.latitude, position.longitude);
      if (weatherData != null) {
        setState(() {
          weather = WeatherModel.fromJson(weatherData);
          isLoading = false;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("حالة الطقس")),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : weather != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "الموقع: ${weather!.city}",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Image.network("https://openweathermap.org/img/wn/${weather!.icon}@2x.png"),
                      SizedBox(height: 10),
                      Text(
                        "درجة الحرارة: ${weather!.temperature}°C",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "الوصف: ${weather!.description}",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: fetchWeather,
                        child: Text("تحديث الطقس"),
                      ),
                    ],
                  )
                : Text("تعذر جلب بيانات الطقس"),
      ),
    );
  }
}
