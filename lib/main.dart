import 'package:flutter/material.dart';
import 'package:protin_gym/screens/Display.dart';
import 'package:protin_gym/screens/Onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool showHome = false;
var current = DateTime.now();
final prefs = SharedPreferences.getInstance();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  showHome = prefs.getBool('showHome') ?? false;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: showHome
          ? Display_page()
          : Onboarding_page(),
    );
  }
}
