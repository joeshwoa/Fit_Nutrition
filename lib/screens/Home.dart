import 'package:flutter/material.dart';
import 'package:protin_gym/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  double InvCalo = 0;
  double InvCarb = 0;
  double InvFat = 0;
  double InvProt = 0;

  @override
  void initState() {
    super.initState();
    _resetInvNewDay();
    _loadInv();
  }

  void _loadInv() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {

      InvCalo = prefs.getDouble('dayCalo') ?? 0;
      InvCarb = prefs.getDouble('dayCarb') ?? 0;
      InvFat = prefs.getDouble('dayFat') ?? 0;
      InvProt = prefs.getDouble('dayProt') ?? 0;
    });
  }

  void _resetInv() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setDouble('dayCalo', 0);
      prefs.setDouble('dayCarb', 0);
      prefs.setDouble('dayFat', 0);
      prefs.setDouble('dayProt', 0);
      _loadInv();
    });
  }

  void _resetInvNewDay() async {
    final prefs = await SharedPreferences.getInstance();
    if (current.year != prefs.getInt('currentYear') ||
        current.month != prefs.getInt('currentMonth') ||
        current.day != prefs.getInt('currentDay')) {
      setState(() {
        prefs.setInt('currentDay', current.day);
        prefs.setInt('currentMonth', current.month);
        prefs.setInt('currentYear', current.year);
        prefs.setDouble('dayCalo', 0);
        prefs.setDouble('dayCarb', 0);
        prefs.setDouble('dayFat', 0);
        prefs.setDouble('dayProt', 0);
        _loadInv();
      });
    }
  }

  void _enterInd(int c) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setInt('curInd',c);
    });
  }
  @override
  Widget build(BuildContext context) {
    _loadInv();
    return Scaffold(
        backgroundColor: Color(0xFF182633),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              Container(
                width: 400,
                height: 130,
                decoration: BoxDecoration(
                  color: Color(0xFF5c6063),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xFF39d38d), width: 1),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Calories",
                                    style: TextStyle(
                                        color: Color(0xFF39d38d),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text(InvCalo.toStringAsFixed(2),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      overflow: TextOverflow.fade,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Carbs",
                                    style: TextStyle(
                                        color: Color(0xFF39d38d),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text(InvCarb.toStringAsFixed(2),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Fat",
                                    style: TextStyle(
                                        color: Color(0xFF39d38d),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text(InvFat.toStringAsFixed(2),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Protein",
                                    style: TextStyle(
                                        color: Color(0xFF39d38d),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text(InvProt.toStringAsFixed(2),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () async {
                            _resetInv();
                          },
                          child: Container(
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Color(0xFF39d38d),
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: Text(
                                "Reset Inventory",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                width: 300,
                child: FloatingActionButton(
                  onPressed: () {
                    _enterInd(0);
                  },
                  child: Container(
                    height: 200,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Healthy Food",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                    alignment: AlignmentDirectional.bottomCenter,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF39d38d), width: 1),
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                          image: AssetImage("assets/HF.jpg"),
                          fit: BoxFit.fitHeight,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                width: 300,
                child: FloatingActionButton(
                  onPressed: () {
                    _enterInd(1);
                  },
                  child: Container(
                    height: 200,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Calories Calculator",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                    alignment: AlignmentDirectional.bottomCenter,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF39d38d), width: 1),
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                          image: AssetImage("assets/CC.jpg"),
                          fit: BoxFit.fitHeight,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                width: 300,
                child: FloatingActionButton(
                  onPressed: () {
                    _enterInd(3);
                  },
                  child: Container(
                    height: 200,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Supplements",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                    alignment: AlignmentDirectional.bottomCenter,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF39d38d), width: 1),
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                          image: AssetImage("assets/Su.jpg"),
                          fit: BoxFit.fitHeight,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                width: 300,
                child: FloatingActionButton(
                  onPressed: () {
                    _enterInd(4);
                  },
                  child: Container(
                    height: 200,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Exercises",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                    alignment: AlignmentDirectional.bottomCenter,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF39d38d), width: 1),
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                          image: AssetImage("assets/Ex.jpg"),
                          fit: BoxFit.fitHeight,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
