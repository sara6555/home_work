/*Use Map and List to create a program that stores weather data for different cities (temperature,
humidity, etc.). Write a function that can retrieve and print weather details using a city name.*/

void main() {
  Map<String, List<Map<String, dynamic>>> weatherData = {
    'Dammam': [
      {'temperature': 17, 'humidity': 87}
    ],
    'Damascus': [
      {'temperature': 7, 'humidity': 72}
    ],
    'Istabul': [
      {'temperature': 7, 'humidity': 87}
    ]
  };
  weatherDetails(weather: weatherData, city: 'Dammam');
}

void weatherDetails(
    {required Map<String, List<Map<String, dynamic>>> weather,
    required String city}) {
  print(weather[city]);
}
