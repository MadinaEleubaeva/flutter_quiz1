import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WeatherForecast(),
    );
  }
}

class WeatherForecast extends StatelessWidget {
  const WeatherForecast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather Forecast',
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.blue], // Two gradient colors
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Add action for settings button
              print('Settings button pressed');
            },
            icon: const Icon(Icons.settings),
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.wb_sunny,
                  size: 100,
                  color: Colors.orange,
                ),
                const SizedBox(width: 10),
                const Text(
                  '14',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Pushkin 154, Taraz',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Friday, April 19, 2024',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    Icon(
                      Icons.ac_unit,
                      size: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 5),
                    Text(
                      '5 km/hr',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: const [
                    Icon(
                      Icons.ac_unit,
                      size: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 5),
                    Text(
                      '3%',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: const [
                    Icon(
                      Icons.ac_unit,
                      size: 50,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 5),
                    Text(
                      '20%',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              '7 Day Weather Forecast',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add action for the first button
                    print('First Button Pressed');
                  },
                  child: const Text('Button 1'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Add action for the second button
                    print('Second Button Pressed');
                  },
                  child: const Text('Button 2'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add action for refresh button
          print('7 Day Weather Forecast');
        },
        child: const Icon(Icons.refresh),
        backgroundColor: Colors.blue,
      ),
    );
  }
}