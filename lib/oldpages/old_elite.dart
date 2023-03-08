import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:vipfirebase_admin/pages/premiumall/premium_landing.dart';

class OldElite extends StatefulWidget {
  const OldElite({super.key});

  @override
  State<OldElite> createState() => _OldEliteState();
}

class _OldEliteState extends State<OldElite> {
  TextEditingController leguController = TextEditingController();
  TextEditingController teamController = TextEditingController();
  TextEditingController score_1Controller = TextEditingController();
  TextEditingController score_2Controller = TextEditingController();

  TextEditingController bigOneController = TextEditingController();
  TextEditingController bigTwoController = TextEditingController();
  TextEditingController bigThreeController = TextEditingController();

  DateTime now = DateTime.now();

  String finaData_1 = "";
  String finaData_2 = "";
  String finaData_3 = "";
  String finaData_4 = "";

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    final mydata = FirebaseDatabase.instance.ref("__Elite Vip Success Tips");

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0.0,
        title: Row(
          children: [
            Text("OLD ELITE"),
            SizedBox(
              width: screenWidth * .050,
            ),
            Spacer(),
            DigitalClock(
              secondDigitTextStyle: TextStyle(
                color: Colors.white,
              ),
              hourMinuteDigitTextStyle: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              colon: Icon(
                Icons.ac_unit,
                size: 12,
                color: Colors.white,
              ),
              colonDecoration: BoxDecoration(
                border: Border.all(),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => PremiumLanding()));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 1,
                  color: Colors.grey,
                )),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Premium Data",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: screenWidth,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenHeight * 0.020,
                          ),

                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    " ",
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.020,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  height: screenHeight * 0.120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.black,
                                    ),
                                  ),
                                  child: Container(
                                    width: screenWidth * 0.200,
                                    child: TextField(
                                      controller: bigOneController,
                                      maxLines: 5,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(20),
                                        hintText: "Enter Date",
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.020,
                              ),
                              Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff34495e),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Center(
                                        child: Text(
                                          "Add Date",
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.012,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.005,
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                      // color: Color(0xff34495e),
                                      ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Center(
                                      child: Text(
                                        " ",
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.012,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.020,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.020,
                          ),

                          //......................................1st.............1st

                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.020,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  height: screenHeight * 0.120,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.black,
                                    ),
                                  ),
                                  child: Container(
                                    width: screenWidth * 0.200,
                                    child: TextField(
                                      controller: bigOneController,
                                      maxLines: 5,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.020,
                              ),
                              Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {
                                    if (bigOneController.text.isNotEmpty) {
                                      List mylines =
                                          bigOneController.text.split("\n");

                                      finaData_1 = mylines[0];
                                      finaData_2 = mylines[1];
                                      finaData_3 = mylines[2].substring(
                                          0, mylines[2].indexOf("@") + 1);
                                      finaData_4 = mylines[2].substring(
                                          mylines[2].indexOf("@") + 1,
                                          mylines[2].length);

                                      Fluttertoast.showToast(
                                        msg: "Data Setted",
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.TOP_LEFT,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.red,
                                        textColor: Colors.white,
                                        fontSize: 16.0,
                                      );
                                    } else {
                                      Fluttertoast.showToast(
                                        msg: "Input Data First",
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.TOP_LEFT,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.red,
                                        textColor: Colors.white,
                                        fontSize: 16.0,
                                      );
                                    }
                                  },
                                  child: Container(
                                    decoration:
                                        BoxDecoration(color: Color(0xff34495e)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Center(
                                        child: Text(
                                          "Set Data",
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.012,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.005,
                              ),
                              Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {
                                    if (finaData_1 == "" &&
                                        finaData_2 == "" &&
                                        finaData_3 == "" &&
                                        finaData_4 == "") {
                                      Fluttertoast.showToast(
                                        msg: "No Data Setted",
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.TOP_LEFT,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.red,
                                        textColor: Colors.white,
                                        fontSize: 16.0,
                                      );
                                    } else {
                                      mydata.child("1").set({
                                        "legue": finaData_1,
                                        "team": finaData_2,
                                        "score1": finaData_3,
                                        "score2": finaData_4,
                                      });

                                      bigOneController.clear();
                                      finaData_1 = "";
                                      finaData_2 = "";
                                      finaData_3 = "";
                                      finaData_4 = "";
                                    }
                                  },
                                  child: Container(
                                    decoration:
                                        BoxDecoration(color: Color(0xff34495e)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Center(
                                        child: Text(
                                          "ADD DATA",
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.012,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.020,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.005,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.grey,
                      child: FirebaseAnimatedList(
                        query: mydata,
                        itemBuilder: (context, snapshot, animation, index) {
                          int mynumber = index + 1;
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 5, right: 5, bottom: 5),
                            child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Text(
                                              snapshot.key.toString(),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Container(
                                            child: Column(
                                              children: [
                                                Text(snapshot
                                                    .child('date')
                                                    .value
                                                    .toString()),
                                                Text(snapshot
                                                    .child('legue')
                                                    .value
                                                    .toString()),
                                                Text(snapshot
                                                    .child('team')
                                                    .value
                                                    .toString()),
                                                Text(snapshot
                                                    .child('score1')
                                                    .value
                                                    .toString()),
                                                Text(snapshot
                                                    .child('score2')
                                                    .value
                                                    .toString()),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: InkWell(
                                              onTap: () {
                                                mydata
                                                    .child(
                                                        snapshot.key.toString())
                                                    .remove();
                                              },
                                              child: Icon(
                                                Icons.delete,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}