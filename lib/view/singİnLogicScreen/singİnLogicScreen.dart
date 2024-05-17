import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uberapp/controller/services/authServices/mobileAuthServices.dart';

class SinginLogicScreen extends StatefulWidget {
  const SinginLogicScreen({super.key});

  @override
  State<SinginLogicScreen> createState() => _SingInLogicScreenState();
}

class _SingInLogicScreenState extends State<SinginLogicScreen> {
  @override
  Widget build(BuildContext context) {
    void initState() {
      super.initState();
      WidgetsBinding.instance.addPersistentFrameCallback((_) {
        MobileAuthServices.checkAuthentication(context);
      });
    }

    return const Scaffold(
      body: Image(
        image: AssetImage(
          'assets/images/splashScreenImage/SplashScreen.png',
        ),
      ),
    );
  }
}
