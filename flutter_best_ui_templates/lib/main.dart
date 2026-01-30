import 'package:flutter/material.dart';
import 'package:flutter_best_ui_templates/core/theme/app_theme.dart';
import 'package:flutter_best_ui_templates/feature/home/home_page.dart';
import 'package:flutter_best_ui_templates/feature/home/navigation_home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme.textTheme,
        platform: TargetPlatform.iOS,
        dividerTheme: DividerThemeData(color: Color(0xFFE0E0E0)),
      ),
      home: NavigationHomePage(),
    );
  }
}
