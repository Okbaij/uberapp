import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uberapp/view/authScreens/otpScreen.dart';
import 'package:uberapp/view/bottomNavigationBar/bottomNavigationBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, _, __) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Uber Eats',
          theme: ThemeData(),
          home: BottomNavigationBarApp());
    });
  }
}
