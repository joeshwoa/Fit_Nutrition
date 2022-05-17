import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Exercises_page extends StatefulWidget {
  const Exercises_page({Key? key}) : super(key: key);

  @override
  State<Exercises_page> createState() => _Exercises_pageState();
}

class _Exercises_pageState extends State<Exercises_page> {
  final controller = PageController();

  _chestDialog(BuildContext context) {
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
            padding: const EdgeInsets.all(15),
            color: const Color(0xFF182633),
            child: Column(children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      flex: 4,
                      child: Center(
                        child: Text("Chest",
                            style: TextStyle(
                                color: Color(0xFF39d38d),
                                fontSize: 15,
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
                child: GridView.builder(
                  itemCount: 17,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Image.asset("assets/Exercise/chest/chest_" +
                        (index + 1).toString() +
                        ".jpg");
                  },
                ),
              ),
            ]),
          ));
        });
  }

  _backDialog(BuildContext context) {
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
            padding: const EdgeInsets.all(15),
            color: const Color(0xFF182633),
            child: Column(children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      flex: 4,
                      child: Center(
                        child: Text("Back",
                            style: TextStyle(
                                color: Color(0xFF39d38d),
                                fontSize: 15,
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
                child: GridView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Image.asset("assets/Exercise/back/back_" +
                        (index + 1).toString() +
                        ".jpg");
                  },
                ),
              ),
            ]),
          ));
        });
  }

  _shoulderDialog(BuildContext context) {
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
            padding: const EdgeInsets.all(15),
            color: const Color(0xFF182633),
            child: Column(children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      flex: 4,
                      child: Center(
                        child: Text("Shoulder",
                            style: TextStyle(
                                color: Color(0xFF39d38d),
                                fontSize: 15,
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
                child: GridView.builder(
                  itemCount: 16,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Image.asset("assets/Exercise/shoulder/shoulder_" +
                        (index + 1).toString() +
                        ".jpg");
                  },
                ),
              ),
            ]),
          ));
        });
  }

  _armDialog(BuildContext context) {
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
            padding: const EdgeInsets.all(15),
            color: const Color(0xFF182633),
            child: Column(children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      flex: 4,
                      child: Center(
                        child: Text("Arm",
                            style: TextStyle(
                                color: Color(0xFF39d38d),
                                fontSize: 15,
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
                child: GridView.builder(
                  itemCount: 13,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Image.asset("assets/Exercise/arm/arm_" +
                        (index + 1).toString() +
                        ".jpg");
                  },
                ),
              ),
            ]),
          ));
        });
  }

  _legDialog(BuildContext context) {
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
            padding: const EdgeInsets.all(15),
            color: const Color(0xFF182633),
            child: Column(children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      flex: 4,
                      child: Center(
                        child: Text("Leg",
                            style: TextStyle(
                                color: Color(0xFF39d38d),
                                fontSize: 15,
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
                child: GridView.builder(
                  itemCount: 17,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Image.asset("assets/Exercise/leg/leg_" +
                        (index + 1).toString() +
                        ".jpg");
                  },
                ),
              ),
            ]),
          ));
        });
  }

  _absDialog(BuildContext context) {
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
            padding: const EdgeInsets.all(15),
            color: const Color(0xFF182633),
            child: Column(children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      flex: 4,
                      child: Center(
                        child: Text("Abdominal and sides",
                            style: TextStyle(
                                color: Color(0xFF39d38d),
                                fontSize: 15,
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
                child: GridView.builder(
                  itemCount: 0,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Image.asset("assets/Exercise/abs/abs_" +
                        (index + 1).toString() +
                        "jpg");
                  },
                ),
              ),
            ]),
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: controller,
          children: [
            FloatingActionButton(
              onPressed: () {
                _chestDialog(context);
              },
              child: Container(
                child: Center(child: Image.asset("assets/Exercise/chest.png")),
                color: const Color(0xFF182633),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                _backDialog(context);
              },
              child: Container(
                child: Center(child: Image.asset("assets/Exercise/back.png")),
                color: const Color(0xFF182633),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                _shoulderDialog(context);
              },
              child: Container(
                child:
                    Center(child: Image.asset("assets/Exercise/shoulder.png")),
                color: const Color(0xFF182633),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                _armDialog(context);
              },
              child: Container(
                child: Center(child: Image.asset("assets/Exercise/arm.png")),
                color: const Color(0xFF182633),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                _legDialog(context);
              },
              child: Container(
                child: Center(child: Image.asset("assets/Exercise/leg.png")),
                color: const Color(0xFF182633),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                _absDialog(context);
              },
              child: Container(
                child: Center(child: Image.asset("assets/Exercise/abs.png")),
                color: const Color(0xFF182633),
              ),
            )
          ],
        ),
        Positioned(
            bottom: 0,
            left: 16,
            right: 32,
            height: 80,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 6,
                      effect: const WormEffect(
                          spacing: 8.0,
                          radius: 4.0,
                          dotWidth: 15.0,
                          dotHeight: 4.0,
                          dotColor: Color(0xFFbcbcbc),
                          activeDotColor: Color(0xFF39d38d)),
                      onDotClicked: (index) => controller.animateToPage(index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn),
                    ),
                  )
                ],
              ),
            ))
      ],
    ));
  }
}
