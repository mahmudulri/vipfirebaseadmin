import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:vipfirebase_admin/landing.dart';
import 'package:vipfirebase_admin/pages/premiumall/premium_landing.dart';

class FiftyPlusVip extends StatefulWidget {
  const FiftyPlusVip({super.key});

  @override
  State<FiftyPlusVip> createState() => _FiftyPlusVipState();
}

class _FiftyPlusVipState extends State<FiftyPlusVip> {
  TextEditingController leguController = TextEditingController();
  TextEditingController teamController = TextEditingController();
  TextEditingController score_1Controller = TextEditingController();
  TextEditingController score_2Controller = TextEditingController();

  TextEditingController bigOneController = TextEditingController();
  TextEditingController bigTwoController = TextEditingController();
  TextEditingController bigThreeController = TextEditingController();
  TextEditingController bigFourController = TextEditingController();
  TextEditingController bigFiveController = TextEditingController();
  TextEditingController bigSixController = TextEditingController();
  TextEditingController bigSevenController = TextEditingController();

  final dateData = FirebaseDatabase.instance.ref("50_plus_odds_vip_date");

  DateTime now = DateTime.now();

  String finaData_1 = "";
  String finaData_2 = "";
  String finaData_3 = "";
  String finaData_4 = "";

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    final mydata = FirebaseDatabase.instance.ref("50_plus_odds_vip");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0.0,
        title: Row(
          children: [
            Text("50 Plus ODDS VIP"),
            SizedBox(
              width: screenWidth * .050,
            ),
            Container(
              height: 60,
              width: 450,
              child: FirebaseAnimatedList(
                query: dateData,
                itemBuilder: (context, snapshot, animation, index) {
                  return Row(
                    children: [
                      Container(
                        color: Colors.cyan,
                        height: 60,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              snapshot.child('date').value.toString(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Center(
                          child: snapshot.child('date').value.toString() !=
                                  "${DateFormat.d().format(now)}-${DateFormat.MMMM().format(now)}-${DateFormat.y().format(now)}"
                              ? Text(
                                  "Please update date",
                                  style: TextStyle(color: Colors.red),
                                )
                              : Text(
                                  "Date Updated",
                                  style: TextStyle(color: Colors.white),
                                ),
                        ),
                      ),
                    ],
                  );
                },
              ),
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
            InkWell(
              onTap: () {
                dateData.child("1").set({
                  "date":
                      "${DateFormat.d().format(now)}-${DateFormat.MMMM().format(now)}-${DateFormat.y().format(now)}",
                });
              },
              child: Container(
                height: 60,
                width: 200,
                color: Colors.blueGrey,
                child: Center(child: Text("Update Date")),
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
                    MaterialPageRoute(builder: (ctx) => LandingPage()));
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
                    "Free Data",
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
                      child: ListView(
                        children: [
                          SizedBox(
                            height: screenHeight * 0.020,
                          ),
                          //...................................1st......1st
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

                          // ..........................................2nd.........2nd

                          SizedBox(
                            height: 5,
                          ),

                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    "2",
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
                                      controller: bigTwoController,
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
                                    if (bigTwoController.text.isNotEmpty) {
                                      List mylines =
                                          bigTwoController.text.split("\n");

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
                                      mydata.child("2").set({
                                        "legue": finaData_1,
                                        "team": finaData_2,
                                        "score1": finaData_3,
                                        "score2": finaData_4,
                                      });

                                      bigTwoController.clear();
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

                          //...............................................3rd ..........3rd
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    "3",
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
                                      controller: bigThreeController,
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
                                    if (bigThreeController.text.isNotEmpty) {
                                      List mylines =
                                          bigThreeController.text.split("\n");

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
                                      mydata.child("3").set({
                                        "legue": finaData_1,
                                        "team": finaData_2,
                                        "score1": finaData_3,
                                        "score2": finaData_4,
                                      });

                                      bigThreeController.clear();
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

                          //.........................................4th .........4th
                          SizedBox(
                            height: 5,
                          ),

                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    "4",
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
                                      controller: bigFourController,
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
                                    if (bigFourController.text.isNotEmpty) {
                                      List mylines =
                                          bigFourController.text.split("\n");

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
                                      mydata.child("4").set({
                                        "legue": finaData_1,
                                        "team": finaData_2,
                                        "score1": finaData_3,
                                        "score2": finaData_4,
                                      });

                                      bigFourController.clear();
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
                          //.........................................5th .........5th
                          SizedBox(
                            height: 5,
                          ),

                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    "5",
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
                                      controller: bigFiveController,
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
                                    if (bigFiveController.text.isNotEmpty) {
                                      List mylines =
                                          bigFiveController.text.split("\n");

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
                                      mydata.child("5").set({
                                        "legue": finaData_1,
                                        "team": finaData_2,
                                        "score1": finaData_3,
                                        "score2": finaData_4,
                                      });

                                      bigFiveController.clear();
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
                          //.........................................6th .........6th
                          SizedBox(
                            height: 5,
                          ),

                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    "6",
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
                                      controller: bigSixController,
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
                                    if (bigSixController.text.isNotEmpty) {
                                      List mylines =
                                          bigSixController.text.split("\n");

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
                                      mydata.child("6").set({
                                        "legue": finaData_1,
                                        "team": finaData_2,
                                        "score1": finaData_3,
                                        "score2": finaData_4,
                                      });

                                      bigSixController.clear();
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

                          //.........................................7 th .........7 th
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    "7",
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
                                      controller: bigSevenController,
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
                                    if (bigSevenController.text.isNotEmpty) {
                                      List mylines =
                                          bigSevenController.text.split("\n");

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
                                      mydata.child("7").set({
                                        "legue": finaData_1,
                                        "team": finaData_2,
                                        "score1": finaData_3,
                                        "score2": finaData_4,
                                      });

                                      bigSevenController.clear();
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
