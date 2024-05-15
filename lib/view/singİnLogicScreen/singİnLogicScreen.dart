import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uberapp/controller/services/authServices/mobileAuthServices.dart';

class SingInLogicScreen extends StatefulWidget {
  const SingInLogicScreen({super.key});

  @override
  State<SingInLogicScreen> createState() => _SingInLogicScreenState();
}

class _SingInLogicScreenState extends State<SingInLogicScreen> {
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
          'assets/images/splashScreenImage/splashScreenImage.png',
        ),
      ),
    );
  }
}
