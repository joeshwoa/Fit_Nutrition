import 'package:flutter/material.dart';
import 'package:protin_gym/data/SupplementData.dart';

class SupplementsInformation_page extends StatefulWidget {
  const SupplementsInformation_page({Key? key}) : super(key: key);

  @override
  State<SupplementsInformation_page> createState() =>
      _SupplementsInformation_pageState();
}

class _SupplementsInformation_pageState
    extends State<SupplementsInformation_page> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget SupplementCard(int iter) {
    return FloatingActionButton(
      elevation: 0,
      backgroundColor: Colors.transparent,
      onPressed: () {
        _infoDialog(context, supplementData[iter].Sname,
            supplementData[iter].Simag, supplementData[iter].Sinfo);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 200,
          width: 190,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: const Color(0xFF5c6063)),
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
                  width: 180,
                  child: Center(
                      child: Text(supplementData[iter].Sname,
                          style: const TextStyle(
                            color: Color(0xFF39d38d),
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
                      "assets/Supplement/" + supplementData[iter].Simag,
                      width: 160,
                      fit: BoxFit.fitHeight,
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

  _infoDialog(BuildContext context, String name, String imag, String info) {
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
                            "assets/Supplement/" + imag,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(info,
                            style: const TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontSize: 15,
                            ))
                      ],
                    )),
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
          itemCount: supplementData.length,
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return SupplementCard(index);
          },
        ),
      ),
    );
  }
}
