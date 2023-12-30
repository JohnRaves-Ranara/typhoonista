import 'package:flutter/material.dart';

class weather_forecast extends StatelessWidget {
  const weather_forecast({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.pink,
        child: Center(child: Text("weather forecast")),
      ),
    );
  }
}