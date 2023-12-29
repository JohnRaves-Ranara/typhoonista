import 'package:flutter/material.dart';
import 'package:typhoonista/assets/themes/textStyles.dart';
import 'package:typhoonista/widgets/dashboard_page/dashboard_wrapper_widgets/header_label.dart';
import 'package:typhoonista/widgets/dashboard_page/dashboard_wrapper_widgets/header_user_section.dart';

class header extends StatelessWidget {
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      width: double.infinity,
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
