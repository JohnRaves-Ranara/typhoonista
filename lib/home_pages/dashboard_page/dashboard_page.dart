import 'package:flutter/material.dart';
import 'package:typhoonista/home_pages/dashboard_page/widgets/dashboard_content.dart';
import 'package:typhoonista/home_pages/dashboard_page/widgets/header.dart';

class dashboard_page extends StatelessWidget {
  const dashboard_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xfff6f6f6),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            header(),
            dashboard_content()
          ],
        ),
      ),
    );
  }
}
