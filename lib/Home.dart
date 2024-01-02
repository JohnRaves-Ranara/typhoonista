import 'package:flutter/material.dart';
import 'package:typhoonista/home_pages/dashboard_page/dashboard_page.dart';
import 'home_pages/sidebar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            // border: Border.all(
            //     color: Colors.green, width: 10, style: BorderStyle.solid)
            ),
        child: Row(
          children: [
            Expanded(
              flex: 15, child: sidebar()),

            //todo: widget below is conditional based on sidebar page selection
            //use provider and whistle
            Expanded(
              flex: 85,
              child: dashboard_page())
          ],
        ),
      ),
    );
  }
}
