import 'package:flutter/material.dart';

class estimator_page extends StatefulWidget {
  const estimator_page({super.key});

  @override
  State<estimator_page> createState() => _estimator_pageState();
}

class _estimator_pageState extends State<estimator_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
                flex: 25,
                child: Container(
                  color: Colors.amber,
                )),
            SizedBox(height: 20,),
            Expanded(
                flex: 75,
                child: Row(
                  children: [
                    Expanded(child: Container(
                      color: Colors.green,
                    )),
                    Expanded(child: Container(
                      color: Colors.blue,
                    ))
                  ],
                )),
          ],
        ));
  }
}
