import 'package:flutter/material.dart';
import 'package:typhoonista/assets/themes/textStyles.dart';
import 'package:typhoonista/home_pages/dashboard_page/dashboard_page.dart';
import 'package:typhoonista/home_pages/documents_page/documents_page.dart';
import 'package:typhoonista/home_pages/estimator_page/estimator_page.dart';
import 'package:typhoonista/home_pages/history_page/history_page.dart';
import 'package:provider/provider.dart';
import 'package:typhoonista/providers/page_provider.dart';

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
            padding: const EdgeInsets.only(left: 20),
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
              return Ink(
                // color: Colors.purple,
                height: 50,
                child: InkWell(
                  onTap: ((){
                    // context.read<page_provider>().changePage(index+1);
                  }),
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
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
