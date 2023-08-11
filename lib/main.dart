import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ilan/screens/starting_screen.dart';


void main() {

  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Collapse Sidebar',
        theme: Theme.of(context).copyWith(
      appBarTheme: Theme.of(context)
          .appBarTheme
          .copyWith(systemOverlayStyle: SystemUiOverlayStyle.dark),
        ),
      home: const StartingPage(),
    );
  }
}



