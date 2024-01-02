import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:typhoonista/Home.dart';
import 'package:typhoonista/test.dart';
import 'package:provider/provider.dart';
import 'providers/sample_provider.dart';
import 'test2.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // ignore: prefer_const_constructors
      options: FirebaseOptions(
          apiKey: "AIzaSyCF_OtQ6GOCV4iQOX5fF5OEvHzEfoFMlnk",
          appId: "1:1031953287185:web:cbfaf9f907c8f73327c9b0",
          messagingSenderId: "1031953287185",
          projectId: "typhoonista-f094b"));

  Provider.debugCheckInvalidValueType = null;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SampleProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Typhoonista',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Home(),
      ),
    );
  }
}
