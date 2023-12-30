import 'package:flutter/material.dart';
import 'package:typhoonista/home_pages/dashboard_page/widgets/header_widgets/header_label.dart';
import 'package:typhoonista/home_pages/dashboard_page/widgets/header_widgets/header_user_section.dart';


class header extends StatelessWidget {
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          header_label(),
          SizedBox(width: 15,), 
          header_user_section()
          ],
      ),
    );
  }
}
