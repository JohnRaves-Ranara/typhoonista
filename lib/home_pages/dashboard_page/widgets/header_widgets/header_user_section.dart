import 'package:flutter/material.dart';
import 'package:typhoonista/assets/themes/textStyles.dart';

class header_user_section extends StatelessWidget {
  const header_user_section({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      height: 78,
      width: 218,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 55,
            width: 55,
            child: CircleAvatar(
              child: Center(child: Text("J"),),
            ),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("John Doe", style: textStyles.lato_bold(fontSize: 18, color: Colors.black),),
              Text("DRR Focal", style: textStyles.lato_light(fontSize: 12, color: Colors.black),)
            ],
          )
        ],
      ),
    );
  }
}
