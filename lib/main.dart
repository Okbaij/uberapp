import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uberapp/firebase_options.dart';
import 'package:uberapp/view/authScreens/mobilLoginScreen.dart';
import 'package:uberapp/view/authScreens/otpScreen.dart';
import 'package:uberapp/view/bottomNavigationBar/bottomNavigationBar.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const uberapp());
}

class uberapp extends StatelessWidget {
  const uberapp({Key? key}) : super(key: key);

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
