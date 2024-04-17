import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: kBackgroundColor,
        colorScheme: const ColorScheme.light(primary: kPrimaryColor,),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      home: const HomeScreen(),
    );
  }
}
