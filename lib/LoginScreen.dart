import 'package:flutter/material.dart';
import 'package:typhoonista/assets/themes/textStyles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width:  MediaQuery.of(context).size.width,
        color: Colors.green,
        child: Stack(
          children: [
            Image(image: AssetImage("lib/assets/images/login_screen_bg.png"), 
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            // fit: BoxFit.cover,
            ),
            Positioned(
              top: 30,
              left: 30,
              child: Row(
                children: [
                  Image(image: AssetImage("lib/assets/images/typhoonista_logo.png"),),
                  SizedBox(width: 20,),
                  Text("TYPHOONISTA", style: textStyles.lato_black(fontSize: 25, color: Colors.white),)
                ],
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width*0.4,
                color: Colors.white,
              ),
            )
          ],
        ),
      )
    );
  }
}