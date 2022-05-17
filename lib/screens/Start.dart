import 'package:flutter/material.dart';
import '../main.dart';
import 'Display.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Start_page extends StatefulWidget {
  const Start_page({Key? key}) : super(key: key);

  @override
  State<Start_page> createState() => _Start_pageState();
}

class _Start_pageState extends State<Start_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment.bottomRight,
                  begin: Alignment.topLeft,
                  colors: [
                Color(0xFF5c6063),
                Color(0xFF182633),
              ])),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("assets/logo.png"),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("G",
                            style: TextStyle(
                                color: Color(0xFF39d38d),
                                fontSize: 45,
                                fontWeight: FontWeight.bold)),
                        Text("o and",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("achieve ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        Text("Y",
                            style: TextStyle(
                                color: Color(0xFF39d38d),
                                fontSize: 45,
                                fontWeight: FontWeight.bold)),
                        Text("our",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("bodybuilding drea",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        Text("M",
                            style: TextStyle(
                                color: Color(0xFF39d38d),
                                fontSize: 45,
                                fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setBool('showHome', true);
                    prefs.setInt('currentDay', current.day);
                    prefs.setInt('currentMonth', current.month);
                    prefs.setInt('currentYear', current.year);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>Display_page()));
                  },
                  child: Container(
                    height: 68,
                    width: 300,
                    decoration: BoxDecoration(
                        color: const Color(0xFF39d38d),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white, fontSize: 28),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
