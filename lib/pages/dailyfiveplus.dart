import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

import 'premiumall/premium_landing.dart';

class DailyFivePlus extends StatefulWidget {
  const DailyFivePlus({super.key});

  @override
  State<DailyFivePlus> createState() => _DailyFivePlusState();
}

class _DailyFivePlusState extends State<DailyFivePlus> {
  TextEditingController leguController = TextEditingController();
  TextEditingController teamController = TextEditingController();
  TextEditingController score_1Controller = TextEditingController();
  TextEditingController score_2Controller = TextEditingController();

  TextEditingController bigOneController = TextEditingController();
  TextEditingController bigTwoController = TextEditingController();
  TextEditingController bigThreeController = TextEditingController();
  TextEditingController bigFourController = TextEditingController();
  TextEditingController bigFiveController = TextEditingController();

  // TextEditingController lineOnetext = TextEditingController();
  // TextEditingController lineTwotext = TextEditingController();
  // TextEditingController lineThreetext = TextEditingController();
  // TextEditingController lineFourtext = TextEditingController();

  String finaData_1 = "";
  String finaData_2 = "";
  String finaData_3 = "";
  String finaData_4 = "";

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    final mydata = FirebaseDatabase.instance.ref("Daily_Five_Plus");

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text("Daily Five Plus"),
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

                          //.........................................1st........1st

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
                                        bigFourController.text.split("\n");

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
                                    mydata.child("4").set({
                                      "legue": finaData_1,
                                      "team": finaData_2,
                                      "score1": finaData_3,
                                      "score2": finaData_4,
                                    });
                                    bigFourController.clear();
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

                          //........................................5th......5th

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
                                        bigFiveController.text.split("\n");

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
                                    mydata.child("5").set({
                                      "legue": finaData_1,
                                      "team": finaData_2,
                                      "score1": finaData_3,
                                      "score2": finaData_4,
                                    });
                                    bigFiveController.clear();
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
