import 'package:flutter/material.dart';
import 'package:typhoonista/assets/themes/textStyles.dart';

class recent_estimation extends StatelessWidget {
  const recent_estimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 55,
      child: Container(
        // color: Colors.purple,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  "RECENT ESTIMATION",
                  style:
                      textStyles.lato_bold(color: Colors.black, fontSize: 15),
                )),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      color: Color(0xffA31212)),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 7,
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            double containerHeight = constraints.maxHeight;
                            double containerWidth = constraints.maxWidth;
                            return Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: containerWidth * 0.04,
                                  vertical: containerHeight * 0.15),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26),
                                  color: Color(0xffe50202)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Typhoon Skemberlu    |    Day 5",
                                    style: textStyles.lato_bold(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  Text(
                                    "₱ 4,212,543.23",
                                    style: textStyles.lato_black(
                                        color: Colors.white, fontSize: 45),
                                  ),
                                  Text(
                                    "Estimated Total Damage to Rice Crops",
                                    style: textStyles.lato_light(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: LayoutBuilder(builder: (context, constraints) {
                          double containerHeight = constraints.maxHeight;
                          double containerWidth = constraints.maxWidth;
                          return Container(
                            padding: EdgeInsets.symmetric(
                                vertical: containerHeight * 0.2,
                                horizontal: containerWidth * 0.04),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(26),
                                  bottomRight: Radius.circular(26)),
                              // color: Colors.blue
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Material(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffe50202),
                                    child: Ink(
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(10),
                                        onTap: (() {}),
                                        child: Center(
                                          child: Text(
                                            "DELETE COMPUTATION",
                                            style: textStyles.lato_regular(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Material(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    child: Ink(
                                      child: InkWell(
                                        onTap: ((){}),
                                        borderRadius: BorderRadius.circular(10),
                                        child: Center(
                                          child: Text(
                                            "GENERATE REPORT",
                                            style: textStyles.lato_regular(
                                                color: Colors.black,
                                                fontSize: 10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Material(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    child: Ink(
                                      child: InkWell(
                                        onTap: ((){}),
                                        borderRadius: BorderRadius.circular(10),
                                        child: Center(
                                          child: Text(
                                            "ADD DAY",
                                            style: textStyles.lato_regular(
                                                color: Colors.black,
                                                fontSize: 10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
