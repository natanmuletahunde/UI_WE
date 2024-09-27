import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, dynamic>> countriesWeather = const [
    {'country': 'United States', 'weather': 'Sunny', 'temperature': 25.0},
    {'country': 'Canada', 'weather': 'Cloudy', 'temperature': 18.5},
    {'country': 'United Kingdom', 'weather': 'Rainy', 'temperature': 15.2},
    {'country': 'Germany', 'weather': 'Sunny', 'temperature': 22.0},
    {'country': 'Australia', 'weather': 'Windy', 'temperature': 28.3},
    {'country': 'France', 'weather': 'Sunny', 'temperature': 20.0},
    {'country': 'Japan', 'weather': 'Cloudy', 'temperature': 19.5},
    {'country': 'South Korea', 'weather': 'Rainy', 'temperature': 16.8},
    {'country': 'Brazil', 'weather': 'Sunny', 'temperature': 29.7},
    {'country': 'India', 'weather': 'Hot', 'temperature': 35.5},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: countriesWeather.length,
      itemBuilder: (context, index) {
        final country = countriesWeather[index]['country'];
        final weather = countriesWeather[index]['weather'];
        final temperature = countriesWeather[index]['temperature'];

        return ListTile(
          title: Text(
            country,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text('Weather: $weather, Temp: ${temperature.toStringAsFixed(1)}°C'),
          leading: const Icon(Icons.cloud),
          onTap: () {
            // You can handle on-tap event if necessary.
          },
        );
      },
    );
  }
}
