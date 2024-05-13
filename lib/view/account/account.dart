import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uberapp/utils/colors.dart';
import 'package:uberapp/utils/textStyles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class accountScreen extends StatefulWidget {
  const accountScreen({super.key});

  @override
  State<accountScreen> createState() => _accountScreenState();
}

class _accountScreenState extends State<accountScreen> {
  List account = [
    [FontAwesomeIcons.shop, 'Siparişler'],
    [FontAwesomeIcons.locationPin, 'Adres'],
    [FontAwesomeIcons.heart, 'Favorileriniz'],
    [FontAwesomeIcons.star, 'Restaurant Ödülleri'],
    [FontAwesomeIcons.wallet, 'Cüzdan'],
    [FontAwesomeIcons.gift, 'Hediye gönder'],
    [FontAwesomeIcons.suitcase, 'İşletme tercihleri'],
    [FontAwesomeIcons.person, 'Yardım'],
    [FontAwesomeIcons.tag, 'Terfi'],
    [FontAwesomeIcons.ticket, 'Uber Geçişi'],
    [FontAwesomeIcons.suitcase, 'Uber ile teslimat yapın'],
    [FontAwesomeIcons.gear, 'Ayarlar'],
    [FontAwesomeIcons.powerOff, 'Oturumu Kapat'],
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
          children: [
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 3.h,
                  backgroundColor: black,
                  child: CircleAvatar(
                    radius: 3.h - 2,
                    backgroundColor: white,
                    child: FaIcon(
                      FontAwesomeIcons.user,
                      size: 3.h,
                      color: grey,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Kullanıcı adı',
                  style: AppTextStyles.body16,
                ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            ListView.builder(
                itemCount: account.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: FaIcon(
                      account[index][0],
                      size: 2.h,
                      color: black,
                    ),
                    title: Text(
                      account[index][1],
                      style: AppTextStyles.body14,
                    ),
                  );
                }),
          ]),
    ));
  }
}
