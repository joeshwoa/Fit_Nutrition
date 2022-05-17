import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'CalorieCalculator.dart';
import 'Home.dart';
import 'SupplementsInformation.dart';
import 'HealthyMeals.dart';
import 'Exercises.dart';
import 'package:backdrop/backdrop.dart';
import 'package:mailto/mailto.dart';

launchMailto() async {
  final mailtoLink = Mailto(
    to: ['joeshwoa.george@gmail.com'],
    subject: 'mail from Fit Nutrition User',
  );
  await launchUrlString(mailtoLink.toString());
}

class Display_page extends StatefulWidget {
  Display_page({Key? key}) : super(key: key);
  @override
  State<Display_page> createState() => _Display_pageState();
}

class _Display_pageState extends State<Display_page>
    with TickerProviderStateMixin {

  late int currentIndex;
  bool _isPlay = false;
  late AnimationController _controller;
  void changeInd (int c)
  {
    setState(() {
      currentIndex = c;
    });
  }
  void _loadInd() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      currentIndex = prefs.getInt('curInd') ?? 2;
    });
  }
  void _resetInd() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('curInd');
  }
  void _enterInd(int c) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setInt('curInd',c);
    });
  }
  @override
  void initState() {
    _controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _resetInd();
    _controller.dispose();
    super.dispose();
  }

  final screens = [
    const HealthyMeals_page(),
    const CalorieCalculator_page(),
    const Home_page(),
    const SupplementsInformation_page(),
    const Exercises_page()
  ];

  Widget get HealthyMealsIcon {
    if (currentIndex == 0) {
      return Image.asset(
        "assets/Icon/restaurantS.png",
        width: 28,
        height: 28,
      );
    } else {
      return Image.asset(
        "assets/Icon/restaurantUS.png",
        width: 28,
        height: 28,
      );
    }
  }

  Widget get CalorieCalculatorIcon {
    if (currentIndex == 1) {
      return Image.asset(
        "assets/Icon/flameS.png",
        width: 28,
        height: 28,
      );
    } else {
      return Image.asset(
        "assets/Icon/flameUS.png",
        width: 28,
        height: 28,
      );
    }
  }

  Widget get HomeIcon {
    if (currentIndex == 2) {
      return Image.asset(
        "assets/Icon/homeS.png",
        width: 28,
        height: 28,
      );
    } else {
      return Image.asset(
        "assets/Icon/homeUS.png",
        width: 28,
        height: 28,
      );
    }
  }

  Widget get SupplementsInformationIcon {
    if (currentIndex == 3) {
      return Image.asset(
        "assets/Icon/bottleS.png",
        width: 28,
        height: 28,
      );
    } else {
      return Image.asset(
        "assets/Icon/bottleUS.png",
        width: 28,
        height: 28,
      );
    }
  }

  Widget get ExercisesIcon {
    if (currentIndex == 4) {
      return Image.asset(
        "assets/Icon/gymS.png",
        width: 28,
        height: 28,
      );
    } else {
      return Image.asset(
        "assets/Icon/gymUS.png",
        width: 28,
        height: 28,
      );
    }
  }

  Widget get LeadingIcon {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (_isPlay == false) {
            _controller.forward();
            _isPlay = true;
          } else {
            _controller.reverse();
            _isPlay = false;
          }
        },
        child: const BackdropToggleButton(
            icon: AnimatedIcons.close_menu, color: Color(0xFF39d38d)),
      ),
    );
  }

  Widget get bottomNavigationBar {
    return ClipRRect(
      child: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          onTap: (index) => setState(() {
            _enterInd(index);
          }),
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF182633),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: HealthyMealsIcon,
              label: "Healthy Meals",
              backgroundColor: const Color(0xFF182633),
            ),
            BottomNavigationBarItem(
              icon: CalorieCalculatorIcon,
              label: "Calorie Calculator",
              backgroundColor: const Color(0xFF182633),
            ),
            BottomNavigationBarItem(
              icon: HomeIcon,
              label: "Home",
              backgroundColor: const Color(0xFF182633),
            ),
            BottomNavigationBarItem(
              icon: SupplementsInformationIcon,
              label: "Supplements Information",
              backgroundColor: const Color(0xFF182633),
            ),
            BottomNavigationBarItem(
              icon: ExercisesIcon,
              label: "Exercises",
              backgroundColor: const Color(0xFF182633),
            ),
          ],
        ),
      ),
    );
  }

  _aboutDialog(BuildContext context) {
    showGeneralDialog(
        context: context,
        barrierDismissible: false,
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: ScaleTransition(
              scale: animation,
              child: child,
            ),
          );
        },
        pageBuilder: (context, animation, secondaryAnimation) {

          return SafeArea(
              child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(20),
            color: const Color(0xFF182633),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        flex: 4,
                        child: Center(
                          child: Text("About",
                              style: TextStyle(
                                  color: Color(0xFF39d38d),
                                  fontSize: 25,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          width: 80,
                          height: 40,
                          child: FloatingActionButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF39d38d),
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Center(
                                child: Text(
                                  "back",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: ListView(children: const [
                    Text(
                        "This application is used to help you get a harmonious athletic body if you are seeking to get it, or to help you maintain your physical fitness and track your progress if you have an athletic body from the ground up.\n\nYou can use this application whit some search, read and continue to dispense with personal trainer and cost it because this application serves as personal trainer with you wherever you are and does not need internet.\n\nthis app is now made up from.\n\n1) Calorie Calculator with some basic food components.\n\n2) Some exercises for bodybuilding.\n\n3) information on some important dietary suipplements.\n\n4) Suggestions for healthy and easy preparations and information about that you are conceived what you eat today!!\n\nFinally thank you for using our application and promise from us adding more basic food components and constantly food suggestions attempt to add good services in upcoming updates.\n\nPlease contact us if you want to add a proposal or encounter a problem in the application.\n\n",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        )),
                  ]),
                ),
              ],
            ),
          ));
        });
  }

  _DesinersDialog(BuildContext context) {
    showGeneralDialog(
        context: context,
        barrierDismissible: false,
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: ScaleTransition(
              scale: animation,
              child: child,
            ),
          );
        },
        pageBuilder: (context, animation, secondaryAnimation) {
          return SafeArea(
              child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(20),
            color: const Color(0xFF182633),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        flex: 4,
                        child: Center(
                          child: Text("App desiners",
                              style: TextStyle(
                                  color: Color(0xFF39d38d),
                                  fontSize: 25,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          width: 80,
                          height: 40,
                          child: FloatingActionButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF39d38d),
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Center(
                                child: Text(
                                  "back",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: ListView(children: const [
                    Text(
                        "Programmed by Joeshwoa George\n   email: joeshwoa.george@gmail.com\n\nUI/UX designed by Mohammed Emam\n   email: muhamedemam97@gmail.com\n\nData collected by\n   1) Osama Ibrahim\n   email: osamaabrahim72@gmail.com\n   2) Jan George\n   email: jangeorgecr7@gmail.com",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        )),
                  ]),
                ),
              ],
            ),
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    _loadInd();
    return BackdropScaffold(
      resizeToAvoidBottomInset: false,
      appBar: BackdropAppBar(
        leading: LeadingIcon,
        backgroundColor: const Color(0xFF5c6063),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: SizedBox(),
              flex: 1,
            ),
            Expanded(
                child: Center(
                    child: Image.asset("assets/logo.png",
                        height: 70, alignment: Alignment.center)),
                flex: 5),
            const Expanded(
              child: SizedBox(),
              flex: 2,
            )
          ],
        ),
      ),
      backLayerBackgroundColor: const Color(0xFF5c6063),
      headerHeight: 120,
      frontLayer: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: bottomNavigationBar,
      frontLayerScrim: Colors.transparent,
      backLayer: SizedBox(
        height: 550,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: TextButton(
                onPressed: () async {
                  launchUrlString("https://www.FitNutriton.com");
                },
                child: const SizedBox(
                  height: 68,
                  width: 300,
                  child: Center(
                    child: Text(
                      "Visit our websit",
                      style: TextStyle(color: Color(0xFF39d38d), fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Container(color: const Color(0xFF39d38d), width: 300, height: 1),
            Center(
              child: TextButton(
                onPressed: () async {
                  launchMailto();
                },
                child: const SizedBox(
                  height: 68,
                  width: 300,
                  child: Center(
                    child: Text(
                      "Contact Us",
                      style: TextStyle(color: Color(0xFF39d38d), fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Container(color: const Color(0xFF39d38d), width: 300, height: 1),
            Center(
              child: TextButton(
                onPressed: () {
                  _aboutDialog(context);
                },
                child: const SizedBox(
                  height: 68,
                  width: 300,
                  child: Center(
                    child: Text(
                      "About",
                      style: TextStyle(color: Color(0xFF39d38d), fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Container(color: const Color(0xFF39d38d), width: 300, height: 1),
            Center(
              child: TextButton(
                onPressed: () {
                  _DesinersDialog(context);
                },
                child: const SizedBox(
                  height: 68,
                  width: 300,
                  child: Center(
                    child: Text(
                      "App Desiners",
                      style: TextStyle(color: Color(0xFF39d38d), fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Container(color: const Color(0xFF39d38d), width: 300, height: 1),
            const Center(
              child: SizedBox(
                height: 68,
                width: 300,
                child: Center(
                  child: Text(
                    "V 1.0 BETA",
                    style: TextStyle(color: Color(0xFF39d38d), fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
