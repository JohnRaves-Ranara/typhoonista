import 'package:flutter/material.dart';
import 'package:typhoonista/assets/themes/textStyles.dart';

class settings extends StatelessWidget {
  settings({super.key});

  List<Widget> icons = [
    Image.asset(
      'assets/images/typhoonista_logo.png',
      height: 22,
      width: 22,
    ),
    Image.asset(
      'assets/images/estimator.png',
      height: 22,
      width: 22,
    ),
  ];

  List<Widget> labels = [
    Text(
      'Settings',
      style: textStyles.lato_bold(color: Colors.black, fontSize: 18),
    ),
    Text(
      'Log Out',
      style: textStyles.lato_bold(color: Colors.red, fontSize: 18),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "SETTINGS",
              style: textStyles.lato_regular(
                  color: Colors.grey.shade400, fontSize: 12),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: icons.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: ((){}),
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  height: 50,
                  child: Row(
                    children: [
                      Container(
                        height: 22,
                        width: 22,
                        color: (index==icons.length) ? Colors.red : Colors.black,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      labels[index]
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
