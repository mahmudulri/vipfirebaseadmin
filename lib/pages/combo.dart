import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:intl/intl.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

import 'premiumall/premium_landing.dart';

class ComboTips extends StatefulWidget {
  const ComboTips({super.key});

  @override
  State<ComboTips> createState() => _ComboTipsState();
}

class _ComboTipsState extends State<ComboTips> {
  TextEditingController leguController = TextEditingController();
  TextEditingController teamController = TextEditingController();
  TextEditingController score_1Controller = TextEditingController();
  TextEditingController score_2Controller = TextEditingController();

  TextEditingController bigOneController = TextEditingController();
  TextEditingController bigTwoController = TextEditingController();
  TextEditingController bigThreeController = TextEditingController();

  final dateData = FirebaseDatabase.instance.ref("Combo_Tips_Date");

  DateTime now = DateTime.now();

  String finaData_1 = "";
  String finaData_2 = "";
  String finaData_3 = "";
  String finaData_4 = "";

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    final mydata = FirebaseDatabase.instance.ref("Combo_Tips");

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0.0,
        title: Row(
          children: [
            Text("Combo"),
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
                          //..............................................1st .....1st
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
                                    // String myName = "Over 2.5 @1.50";
                                    // String before = myName.substring(0, myName.indexOf('@'));
                                    // String after = myName.substring(myName.indexOf('@') + 1, myName.length);
                                    // print(before);
                                    // print(after);

                                    // print(bigtextController.text.substring(0,
                                    //     bigtextController.text.indexOf("\n")));
                                    // print(bigtextController.text.substring(
                                    //     bigtextController.text.indexOf("\n") ,
                                    //     bigtextController.text.indexOf("\n")));

                                    List mylines =
                                        bigOneController.text.split("\n");

                                    // print(mylines[0]);
                                    // print(mylines[1]);

                                    // print(mylines[2]
                                    //     .substring(0, mylines[2].indexOf("@")));
                                    // print(mylines[2].substring(
                                    //     mylines[2].indexOf("@") + 1,
                                    //     mylines[2].length));

                                    finaData_1 = mylines[0];
                                    finaData_2 = mylines[1];
                                    finaData_3 = mylines[2].substring(
                                        0, mylines[2].indexOf("@") + 1);
                                    finaData_4 = mylines[2].substring(
                                        mylines[2].indexOf("@") + 1,
                                        mylines[2].length);

                                    print(finaData_1);
                                    print(finaData_2);
                                    print(finaData_3);
                                    print(finaData_4);
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
                                    mydata.child("1").set({
                                      "legue": finaData_1,
                                      "team": finaData_2,
                                      "score1": finaData_3,
                                      "score2": finaData_4,
                                    });

                                    bigOneController.clear();
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
                                    // String myName = "Over 2.5 @1.50";
                                    // String before = myName.substring(0, myName.indexOf('@'));
                                    // String after = myName.substring(myName.indexOf('@') + 1, myName.length);
                                    // print(before);
                                    // print(after);

                                    // print(bigtextController.text.substring(0,
                                    //     bigtextController.text.indexOf("\n")));
                                    // print(bigtextController.text.substring(
                                    //     bigtextController.text.indexOf("\n") ,
                                    //     bigtextController.text.indexOf("\n")));

                                    List mylines =
                                        bigTwoController.text.split("\n");

                                    // print(mylines[0]);
                                    // print(mylines[1]);

                                    // print(mylines[2]
                                    //     .substring(0, mylines[2].indexOf("@")));
                                    // print(mylines[2].substring(
                                    //     mylines[2].indexOf("@") + 1,
                                    //     mylines[2].length));

                                    finaData_1 = mylines[0];
                                    finaData_2 = mylines[1];
                                    finaData_3 = mylines[2].substring(
                                        0, mylines[2].indexOf("@") + 1);
                                    finaData_4 = mylines[2].substring(
                                        mylines[2].indexOf("@") + 1,
                                        mylines[2].length);

                                    print(finaData_1);
                                    print(finaData_2);
                                    print(finaData_3);
                                    print(finaData_4);
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
                                    mydata.child("2").set({
                                      "legue": finaData_1,
                                      "team": finaData_2,
                                      "score1": finaData_3,
                                      "score2": finaData_4,
                                    });

                                    bigTwoController.clear();
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
                                    // String myName = "Over 2.5 @1.50";
                                    // String before = myName.substring(0, myName.indexOf('@'));
                                    // String after = myName.substring(myName.indexOf('@') + 1, myName.length);
                                    // print(before);
                                    // print(after);

                                    // print(bigtextController.text.substring(0,
                                    //     bigtextController.text.indexOf("\n")));
                                    // print(bigtextController.text.substring(
                                    //     bigtextController.text.indexOf("\n") ,
                                    //     bigtextController.text.indexOf("\n")));

                                    List mylines =
                                        bigThreeController.text.split("\n");

                                    // print(mylines[0]);
                                    // print(mylines[1]);

                                    // print(mylines[2]
                                    //     .substring(0, mylines[2].indexOf("@")));
                                    // print(mylines[2].substring(
                                    //     mylines[2].indexOf("@") + 1,
                                    //     mylines[2].length));

                                    finaData_1 = mylines[0];
                                    finaData_2 = mylines[1];
                                    finaData_3 = mylines[2].substring(
                                        0, mylines[2].indexOf("@") + 1);
                                    finaData_4 = mylines[2].substring(
                                        mylines[2].indexOf("@") + 1,
                                        mylines[2].length);

                                    print(finaData_1);
                                    print(finaData_2);
                                    print(finaData_3);
                                    print(finaData_4);
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
                                    mydata.child("3").set({
                                      "legue": finaData_1,
                                      "team": finaData_2,
                                      "score1": finaData_3,
                                      "score2": finaData_4,
                                    });

                                    bigThreeController.clear();
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
