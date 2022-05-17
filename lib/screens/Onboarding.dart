import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Start.dart';

class Onboarding_page extends StatefulWidget {
  const Onboarding_page({Key? key}) : super(key: key);

  @override
  State<Onboarding_page> createState() => _Onboarding_pageState();
}

class _Onboarding_pageState extends State<Onboarding_page> {
  final LIQcontroller = LiquidController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            liquidController: LIQcontroller,
            enableLoop: false,
            waveType: WaveType.circularReveal,
            onPageChangeCallback: (index) {
              setState(() {
                isLastPage = (index == 2);
              });
            },
            pages: [
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        end: Alignment.bottomRight,
                        begin: Alignment.topLeft,
                        colors: [
                      Color(0xFF5c6063),
                      Color(0xFF182633),
                    ])),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      child: Image.asset("assets/logo.png"),
                      width: 300,
                    ),
                    SizedBox(
                        width: 300,
                        child:
                            Image.asset("assets/Onboard/icons small-02.png")),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Calculate Your Calories\n",
                            style: TextStyle(
                                color: Color(0xFF39d38d),
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        Text("Now you calculate",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        Text("your calories",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                )),
              ),
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        end: Alignment.centerRight,
                        begin: Alignment.centerLeft,
                        colors: [
                      Color(0xFF5c6063),
                      Color(0xFF182633),
                    ])),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      child: Image.asset("assets/logo.png"),
                      width: 300,
                    ),
                    SizedBox(
                        width: 300,
                        child:
                            Image.asset("assets/Onboard/icons small-03.png")),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Variation Of Exersices\n",
                            style: TextStyle(
                                color: Color(0xFF39d38d),
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        Text("Now you can from many of",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        Text("exercises across the app",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                )),
              ),
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        end: Alignment.topRight,
                        begin: Alignment.bottomLeft,
                        colors: [
                      Color(0xFF5c6063),
                      Color(0xFF182633),
                    ])),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      child: Image.asset("assets/logo.png"),
                      width: 300,
                    ),
                    SizedBox(
                        width: 300,
                        child:
                            Image.asset("assets/Onboard/icons small-04.png")),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Healthy Meals\n",
                            style: TextStyle(
                                color: Color(0xFF39d38d),
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        Text("We can help you to grow up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                        Text("your muscles with healthy meals",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ],
                )),
              ),
            ],
          ),
          Positioned(
              bottom: 0,
              left: 16,
              right: 32,
              height: 80,
              child: isLastPage
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                          child: SizedBox(),
                          flex: 5,
                        ),
                        Expanded(
                          flex: 6,
                          child: Center(
                            child: AnimatedSmoothIndicator(
                              activeIndex: LIQcontroller.currentPage,
                              count: 3,
                              effect: const ExpandingDotsEffect(
                                  spacing: 8.0,
                                  radius: 4.0,
                                  dotWidth: 15.0,
                                  dotHeight: 4.0,
                                  dotColor: Color(0xFFbcbcbc),
                                  activeDotColor: Color(0xFF39d38d)),
                              onDotClicked: (index) =>
                                  LIQcontroller.animateToPage(page: index),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: TextButton(
                              onPressed: () async {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => Start_page()));
                              },
                              child: Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF39d38d),
                                    borderRadius: BorderRadius.circular(30)),
                                child: const Center(
                                  child: Text(
                                    "Let's Do It!",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )),
                        )
                      ],
                    )
                  : Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: AnimatedSmoothIndicator(
                              activeIndex: LIQcontroller.currentPage,
                              count: 3,
                              effect: const ExpandingDotsEffect(
                                  spacing: 8.0,
                                  radius: 4.0,
                                  dotWidth: 15.0,
                                  dotHeight: 4.0,
                                  dotColor: Color(0xFFbcbcbc),
                                  activeDotColor: Color(0xFF39d38d)),
                              onDotClicked: (index) =>
                                  LIQcontroller.animateToPage(page: index),
                            ),
                          )
                        ],
                      ),
                    ))
        ],
      ),
    );
  }
}
