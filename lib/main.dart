import 'package:flutter/material.dart';
import 'package:mobile_service_same_boat/mobile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobile View',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MobileView());
  }
}
