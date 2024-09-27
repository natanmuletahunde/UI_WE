import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const WeatherHomePage(),
    );
  }
}

class WeatherHomePage extends StatefulWidget {
  const WeatherHomePage({super.key});

  @override
  State<WeatherHomePage> createState() => _WeatherHomePageState();
}

class _WeatherHomePageState extends State<WeatherHomePage> {
  // You can later modify these fields to fetch dynamic data
  String cityName = "Adama";
  String weatherCondition = "Sunny";
  double temperature = 29.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Weather App'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blueAccent, Colors.lightBlueAccent],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // City Name
              Text(
                cityName,
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              // Weather Condition
              Text(
                weatherCondition,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 20),
              // Temperature Display
              Text(
                '${temperature.toStringAsFixed(1)}°C',
                style: const TextStyle(
                  fontSize: 80,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              // Weather Icon (Sun, Cloud, Rain, etc.)
              const Icon(
                Icons.wb_sunny_rounded, // You can change the icon based on weather condition
                size: 100,
                color: Colors.yellow,
              ),
              const SizedBox(height: 30),
              // Refresh Button
              ElevatedButton(
                onPressed: () {
                  // Later, you can add logic to refresh weather data
                  setState(() {
                    // Simulate new weather data
                    temperature = 27.5;
                    weatherCondition = "Cloudy";
                    cityName = "Adama";
                  });
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  backgroundColor: Colors.blueAccent,
                ),
                child: const Text(
                  'Refresh Weather',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
