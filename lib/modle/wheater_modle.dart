class WeatherModel {
  final String city;
  final double temperature;
  final String description;
  final String icon;

  WeatherModel({
    required this.city,
    required this.temperature,
    required this.description,
    required this.icon,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      city: json["name"],
      temperature: json["main"]["temp"], // درجة الحرارة بالدرجة المئوية
      description: json["weather"][0]["description"], // وصف الطقس
      icon: json["weather"][0]["icon"], // أيقونة الطقس
    );
  }
}
