import 'package:flutter/material.dart';

class sidebar extends StatelessWidget {
  const sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.amber[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Typhoonista")
        ],
      ),
    );
  }
}