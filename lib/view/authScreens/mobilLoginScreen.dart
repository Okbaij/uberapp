import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uberapp/utils/colors.dart';
import 'package:uberapp/utils/textStyles.dart';

class mobilLoginScreen extends StatefulWidget {
  const mobilLoginScreen({super.key});

  @override
  State<mobilLoginScreen> createState() => _mobilLoginScreenState();
}

class _mobilLoginScreenState extends State<mobilLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
      children: [
        Text('Mobil E-postanızı Girin', style: AppTextStyles.body16Bold)
      ],
    ));
  }
}
