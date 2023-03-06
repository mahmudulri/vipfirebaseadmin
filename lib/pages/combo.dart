import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

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
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    final mydata = FirebaseDatabase.instance.ref("Combo_Tips");

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text("Combo_Tips"),
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
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 5, right: 5, bottom: 5),
                            child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
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
