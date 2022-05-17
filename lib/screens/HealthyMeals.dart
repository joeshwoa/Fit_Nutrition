import 'package:flutter/material.dart';

import '../data/MealData.dart';

class HealthyMeals_page extends StatefulWidget {
  const HealthyMeals_page({Key? key}) : super(key: key);

  @override
  State<HealthyMeals_page> createState() => _HealthyMeals_pageState();
}

class _HealthyMeals_pageState extends State<HealthyMeals_page> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget MealCard(int iter) {
    return FloatingActionButton(
      elevation: 0,
      backgroundColor: Colors.transparent,
      onPressed: () {
        _infoDialog(
            context,
            mealData[iter].Mname,
            mealData[iter].Mcalo,
            mealData[iter].Mcarb,
            mealData[iter].Mfat,
            mealData[iter].Mprot,
            mealData[iter].Mingredients,
            mealData[iter].Mmethod,
            mealData[iter].Mimag);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: const Color(0xFF5c6063)),
          height: 220,
          width: 190,
          child: Column(
            children: [
              const Expanded(
                flex: 1,
                child: SizedBox(
                  width: 180,
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(
                  width: 170,
                  child: Center(
                      child: Text(mealData[iter].Mname,
                          textWidthBasis: TextWidthBasis.longestLine,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Color(0xFF39d38d),
                            fontSize: 15,
                          ))),
                ),
              ),
              Expanded(
                flex: 12,
                child: SizedBox(
                  width: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      "assets/Meal/" + mealData[iter].Mimag,
                      width: 160,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(
                  width: 180,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _infoDialog(BuildContext context, String name, double calo, double carb,
      double fat, double prot, String ingredients, String method, String imag) {
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
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Center(
                          child: Text(name,
                              style: const TextStyle(
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
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 200,
                        child: Image.asset(
                          "assets/Meal/" + imag,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(children: [
                            Text("Calories:" + (calo).toString(),
                                style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Color(0xFF39d38d),
                                    fontSize: 20)),
                            Text("Carbs:" + (carb).toString(),
                                style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Color(0xFF39d38d),
                                    fontSize: 20)),
                          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
                          Column(children: [
                            Text("Protein:" + (prot).toString(),
                                style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Color(0xFF39d38d),
                                    fontSize: 20)),
                            Text("Fat:" + (fat).toString(),
                                style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Color(0xFF39d38d),
                                    fontSize: 20)),
                          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text("Ingredients :\n",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Color(0xFF39d38d),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text(ingredients,
                          style: const TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 15,
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text("Method :\n",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Color(0xFF39d38d),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text(method,
                          style: const TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 15,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF182633),
      key: _scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: mealData.length,
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return MealCard(index);
          },
        ),
      ),
    );
  }
}
