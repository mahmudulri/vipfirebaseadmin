import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FreeTips extends StatefulWidget {
  const FreeTips({super.key});

  @override
  State<FreeTips> createState() => _FreeTipsState();
}

class _FreeTipsState extends State<FreeTips> {
  TextEditingController leguController = TextEditingController();
  TextEditingController teamController = TextEditingController();
  TextEditingController score_1Controller = TextEditingController();
  TextEditingController score_2Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    bool isloading = false;

    final databaseReference = FirebaseDatabase.instance.ref("Sports");

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Free"),
            ),
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
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    "Today",
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
                                    "5+ Odds",
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
                                    "Sure",
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
                                    "Combo",
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
                                    "Bonus",
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
                    flex: 3,
                    child: Container(
                      width: screenWidth,
                      color: Colors.grey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            height: 60,
                            width: 250,
                            color: Colors.white,
                            child: TextField(
                              controller: leguController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 60,
                            width: 250,
                            color: Colors.white,
                            child: TextField(
                              controller: teamController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 60,
                            width: 250,
                            color: Colors.white,
                            child: TextField(
                              controller: score_1Controller,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 60,
                            width: 250,
                            color: Colors.white,
                            child: TextField(
                              controller: score_2Controller,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                databaseReference.child("2").set({
                                  "legue": leguController.text,
                                  "team": teamController.text,
                                  "score1": score_1Controller.text,
                                  "score2": score_2Controller.text,
                                });
                              });
                            },
                            child: Text("Subit Data"),
                          ),
                        ],
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
