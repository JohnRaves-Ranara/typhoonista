import 'package:flutter/material.dart';
import 'package:typhoonista/home_pages/dashboard_page/widgets/dashboard_content_widgets/history.dart';
import 'package:typhoonista/home_pages/dashboard_page/widgets/dashboard_content_widgets/recent_estimation.dart';
import 'package:typhoonista/home_pages/dashboard_page/widgets/dashboard_content_widgets/recorded_typhoons.dart';
import 'package:typhoonista/home_pages/dashboard_page/widgets/dashboard_content_widgets/weather_forecast.dart';

class dashboard_content extends StatelessWidget {
  const dashboard_content({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
                child: Column(
              children: [
                recent_estimation(),
                SizedBox(
                  height: 20,
                ),
                recorded_typhoons()
              ],
            )),
          ),
          SizedBox(
            width: 15 ,
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  weather_forecast(),
                  SizedBox(
                    height: 15,
                  ),
                  history()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
