import 'package:flutter/material.dart';
import 'package:uberapp/utils/textStyles.dart';

class basketscreen extends StatefulWidget {
  const basketscreen({super.key});

  @override
  State<basketscreen> createState() => _basketscreenState();
}

class _basketscreenState extends State<basketscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'sepet ekranı',
        style: AppTextStyles.body14Bold,
      ),
    ));
  }
}
