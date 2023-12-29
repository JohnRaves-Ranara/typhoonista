import 'package:flutter/material.dart';
import 'package:typhoonista/assets/themes/textStyles.dart';

class overview extends StatelessWidget {
  overview({super.key});

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
    Image.asset(
      'assets/images/history.png',
      height: 22,
      width: 22,
    ),
    Image.asset(
      'assets/images/documents.png',
      height: 22,
      width: 22,
    ),
  ];

  List<Widget> labels = [
    Text(
      'Dashboard',
      style: textStyles.lato_bold(color: Colors.black, fontSize: 18),
    ),
    Text(
      'Estimator',
      style: textStyles.lato_bold(color: Colors.black, fontSize: 18),
    ),
    Text(
      'History',
      style: textStyles.lato_bold(color: Colors.black, fontSize: 18),
    ),
    Text(
      'Documents',
      style: textStyles.lato_bold(color: Colors.black, fontSize: 18),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 70),

      // height: 300,
      // color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "OVERVIEW",
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
                        color: Colors.black,
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
