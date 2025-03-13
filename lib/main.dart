import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'package:card_task/screens/home_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // Set to false to disable it in production
      builder: (context) {
        return const MyApp();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
