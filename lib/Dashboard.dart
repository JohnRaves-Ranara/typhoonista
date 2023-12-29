import 'package:flutter/material.dart';
import 'package:typhoonista/widgets/dashboard_page/dashboard_wrapper.dart';
import 'widgets/dashboard_page/sidebar.dart';

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
        decoration: BoxDecoration(
            // border: Border.all(
            //     color: Colors.green, width: 10, style: BorderStyle.solid)
                ),
        child: Row(
          children: [
            sidebar(),
            dashboard_wrapper()
            ],
        ),
      ),
    );
  }
}
