import 'package:flutter/material.dart';
import 'widgets/dashboard/sidebar.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            sidebar()
          ],
        ),
      ),
    );
  }
}