import 'package:flutter/material.dart';

class history extends StatelessWidget {
  const history({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Container(
        color: Colors.amber,
        child: Center(child: Text("history")),
      ),
    );
  }
}