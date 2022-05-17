import 'package:flutter/material.dart';
import 'package:protin_gym/data/FoodData.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CalorieCalculator_page extends StatefulWidget {
  const CalorieCalculator_page({Key? key}) : super(key: key);

  @override
  State<CalorieCalculator_page> createState() => _CalorieCalculator_pageState();
}

class _CalorieCalculator_pageState extends State<CalorieCalculator_page> {
  int grams = 0;
  double calo = 0;
  double carb = 0;
  double fat = 0;
  double prot = 0;
  double InvCalo = 0;
  double InvCarb = 0;
  double InvFat = 0;
  double InvProt = 0;
  void plusGrams(int p) {
    grams += p;
  }

  void plusCalo(double p) {
    calo += p;
  }

  void plusCarb(double p) {
    carb += p;
  }

  void plusFat(double p) {
    fat += p;
  }

  void plusProt(double p) {
    prot += p;
  }

  void _AddFood(int i, double g) {
    setState(() {
      plusGrams(g.toInt());
      plusCalo((foodData[i].Fcalo) * g);
      plusCarb((foodData[i].Fcarb) * g);
      plusFat((foodData[i].Ffat) * g);
      plusProt((foodData[i].Fprot) * g);
    });
  }

  void _NewMeal() {
    setState(() {
      grams = 0;
      calo = 0;
      carb = 0;
      fat = 0;
      prot = 0;
    });
  }

  void _addToInv() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      InvCalo = (prefs.getDouble('dayCalo')!) + calo;
      InvCarb = (prefs.getDouble('dayCarb') ?? 0) + carb;
      InvFat = (prefs.getDouble('dayFat') ?? 0) + fat;
      InvProt = (prefs.getDouble('dayProt') ?? 0) + prot;
      prefs.setDouble('dayCalo', InvCalo);
      prefs.setDouble('dayCarb', InvCarb);
      prefs.setDouble('dayFat', InvFat);
      prefs.setDouble('dayProt', InvProt);
      grams = 0;
      calo = 0;
      carb = 0;
      fat = 0;
      prot = 0;
    });
  }

  Widget FoodCard(int iter) {
    late double gra;
    final controller = TextEditingController();

    return Container(
      height: 250,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: const Color(0xFF5c6063)),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              width: 300,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(foodData[iter].Fname,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                        Text(
                            "Calories:" +
                                (foodData[iter].Fcalo * 100.0)
                                    .toStringAsFixed(2),
                            style: const TextStyle(
                                color: Color(0xFF39d38d), fontSize: 10)),
                        Text(
                            "Carbs:" +
                                (foodData[iter].Fcarb * 100.0)
                                    .toStringAsFixed(2),
                            style: const TextStyle(
                                color: Color(0xFF39d38d), fontSize: 10)),
                      ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
                      Column(children: [
                        Text(
                            "Protein:" +
                                (foodData[iter].Fprot * 100.0)
                                    .toStringAsFixed(2),
                            style: const TextStyle(
                                color: Color(0xFF39d38d), fontSize: 10)),
                        Text(
                            "Fat:" +
                                (foodData[iter].Ffat * 100.0)
                                    .toStringAsFixed(2),
                            style: const TextStyle(
                                color: Color(0xFF39d38d), fontSize: 10)),
                      ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(color: Color(0xFF5c6063)),
              child: Image.asset(
                "assets/Food/" + foodData[iter].Fimag,
                width: 300,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: 300,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 110,
                      child: Center(
                          child: TextField(
                        onChanged: (g) {
                          int g = int.parse(controller.text);
                          gra = g.toDouble();
                        },
                        controller: controller,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xFF39d38d))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Color(0xFF39d38d))),
                            labelText: "number of grams",
                            labelStyle: const TextStyle(
                                fontSize: 10, color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        keyboardType: TextInputType.number,
                      )),
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () async {
                          _AddFood(iter, gra);
                        },
                        child: Container(
                          height: 40,
                          width: 50,
                          decoration: BoxDecoration(
                              color: const Color(0xFF39d38d),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Center(
                            child: Text(
                              "+",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 28),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF182633),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const Expanded(flex: 1, child: SizedBox()),
          Expanded(
            flex: 10,
            child: Container(
              width: 350,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF5c6063)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Weight : ",
                          style: TextStyle(
                              color: Color(0xFF39d38d),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text(grams.toStringAsFixed(2),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      const Text(" g",
                          style: TextStyle(
                              color: Color(0xFF39d38d),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Calories : ",
                          style: TextStyle(
                              color: Color(0xFF39d38d),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text(calo.toStringAsFixed(2),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      const Text(" cal",
                          style: TextStyle(
                              color: Color(0xFF39d38d),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Carbs : ",
                          style: TextStyle(
                              color: Color(0xFF39d38d),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text(carb.toStringAsFixed(2),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      const Text(" g",
                          style: TextStyle(
                              color: Color(0xFF39d38d),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Fat : ",
                          style: TextStyle(
                              color: Color(0xFF39d38d),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text(fat.toStringAsFixed(2),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      const Text(" g",
                          style: TextStyle(
                              color: Color(0xFF39d38d),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Protein : ",
                          style: TextStyle(
                              color: Color(0xFF39d38d),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text(prot.toStringAsFixed(2),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      const Text(" g",
                          style: TextStyle(
                              color: Color(0xFF39d38d),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () async {
                          _NewMeal();
                        },
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: const Color(0xFF39d38d),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Center(
                            child: Text(
                              "New Meal",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () async {
                          _addToInv();
                        },
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: const Color(0xFF39d38d),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Center(
                            child: Text(
                              "+ Meal",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const Expanded(flex: 1, child: SizedBox()),
          Expanded(
            flex: 26,
            child: ListView.builder(
              itemCount: foodData.length,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [FoodCard(index)],
                  );
                } else {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [FoodCard(index)],
                      ),
                    ],
                  );
                }
              },
            ),
          )
        ]),
      ),
    );
  }
}
