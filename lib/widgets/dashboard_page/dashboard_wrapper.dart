import 'package:flutter/material.dart';
import 'package:typhoonista/widgets/dashboard_page/dashboard_wrapper_widgets/header.dart';

class dashboard_wrapper extends StatelessWidget {
  const dashboard_wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xfff6f6f6),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
        child: Column(
          children: [
            header()
          ],
        ),
      ),
    );
  }
}
