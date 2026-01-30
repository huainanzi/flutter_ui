import 'package:flutter/material.dart';
import 'package:flutter_best_ui_templates/core/theme/app_theme.dart';
import 'package:flutter_best_ui_templates/feature/home/drawer_user_controller.dart';
import 'package:flutter_best_ui_templates/feature/home/feedback_page.dart';
import 'package:flutter_best_ui_templates/feature/home/help_page.dart';
import 'package:flutter_best_ui_templates/feature/home/home_drawer.dart';
import 'package:flutter_best_ui_templates/feature/home/home_page.dart';

class NavigationHomePage extends StatefulWidget {
  const NavigationHomePage({super.key});

  @override
  State<NavigationHomePage> createState() => _NavigationHomePageState();
}

class _NavigationHomePageState extends State<NavigationHomePage> {
  Widget? screenView;
  DrawerIndex? drawerIndex;

  @override
  void initState() {
    super.initState();
    drawerIndex = DrawerIndex.home;
    screenView = HomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.white,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: DrawerUserController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            onDrawerCall: (index) {
              changeIndex(index);
            },
            screenView: screenView,
          ),
        ),
      ),
    );
  }

  void changeIndex(DrawerIndex index) {
    if (drawerIndex != index) {
      drawerIndex = index;
      switch (drawerIndex) {
        case DrawerIndex.home:
          setState(() {
            screenView = HomePage();
          });
          break;
        case DrawerIndex.help:
          setState(() {
            screenView = HelpPage();
          });
          break;
        case DrawerIndex.feedback:
          setState(() {
            screenView = FeedbackPage();
          });
          break;
        case DrawerIndex.invite:
          setState(() {
            screenView = HomePage();
          });
          break;
        default:
      }
    }
  }
}
