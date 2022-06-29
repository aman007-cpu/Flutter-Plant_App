import 'package:flutter/material.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/components/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      color: kprimarycolor,
      theme: ThemeData(
        scaffoldBackgroundColor: kbackgroundColor,
        primaryColor: kprimarycolor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextcolor),
      ),
      home: HomeScreen(),
    );
  }
}
