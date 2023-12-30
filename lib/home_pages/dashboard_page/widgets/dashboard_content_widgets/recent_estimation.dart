import 'package:flutter/material.dart';
import 'package:typhoonista/assets/themes/textStyles.dart';

class recent_estimation extends StatelessWidget {
  const recent_estimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // color: Colors.purple,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text("RECENT ESTIMATION", style: textStyles.lato_bold(color: Colors.black, fontSize: 15),)),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(26), color: Color(0xffe50202),),
              ),
            )
          ],
        ),
      ),
    );
  }
}