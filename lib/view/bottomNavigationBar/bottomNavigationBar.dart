import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:uberapp/utils/colors.dart';
import 'package:uberapp/view/account/account.dart';
import 'package:uberapp/view/basket/basketScreen.dart';
import 'package:uberapp/view/browse/browse.dart';
import 'package:uberapp/view/grocery/groceryscreen.dart';
import 'package:uberapp/view/home/homescreen.dart';

class BottomNavigationBarApp extends StatefulWidget {
  const BottomNavigationBarApp({super.key});

  @override
  State<BottomNavigationBarApp> createState() => _BottomNavigationBarAppState();
}

class _BottomNavigationBarAppState extends State<BottomNavigationBarApp> {
  PersistentTabController controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const GroceryScreen(),
      const BrowswScreen(),
      const basketscreen(),
      const accountScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const FaIcon(FontAwesomeIcons.house),
        title: "Ana Sayfa",
        activeColorPrimary: black,
        inactiveColorPrimary: grey,
      ),
      PersistentBottomNavBarItem(
        icon: const FaIcon(FontAwesomeIcons.boxesStacked),
        title: "Alışveriş",
        activeColorPrimary: black,
        inactiveColorPrimary: grey,
      ),
      PersistentBottomNavBarItem(
        icon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
        title: "Ara",
        activeColorPrimary: black,
        inactiveColorPrimary: grey,
      ),
      PersistentBottomNavBarItem(
        icon: const FaIcon(FontAwesomeIcons.cartShopping),
        title: "Sepet",
        activeColorPrimary: black,
        inactiveColorPrimary: grey,
      ),
      PersistentBottomNavBarItem(
        icon: const FaIcon(FontAwesomeIcons.person),
        title: "Hesap",
        activeColorPrimary: black,
        inactiveColorPrimary: grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
    );
  }
}
