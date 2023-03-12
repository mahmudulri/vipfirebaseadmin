import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:vipfirebase_admin/pages/premiumall/premium_landing.dart';

class DemoOld extends StatefulWidget {
  const DemoOld({super.key});

  @override
  State<DemoOld> createState() => _DemoOldState();
}

class _DemoOldState extends State<DemoOld> {
  TextEditingController leguController = TextEditingController();
  TextEditingController teamController = TextEditingController();
  TextEditingController score_1Controller = TextEditingController();
  TextEditingController score_2Controller = TextEditingController();

  TextEditingController withoutDateController = TextEditingController();

  TextEditingController serialController = TextEditingController();

  DateTime now = DateTime.now();

  String finaData_1 = "";
  String finaData_2 = "";
  String finaData_3 = "";
  String finaData_4 = "";
  String finaData_5 = "";

  String tipsSerial = "";

  @override
  void initState() {
    super.initState();
    serialController.text = "0"; // Setting the initial value for the field.
  }

  String category = "__Elite Vip Success Tips";

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    final mydata = FirebaseDatabase.instance.ref(category);

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0.0,
        title: Row(
          children: [
            Text("Demo OLd"),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.black)),
                                height: 50,
                                width: 100,
                                child: TextField(
                                  controller: serialController,
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                onTap: () {
                                  int currentValue =
                                      int.parse(serialController.text);
                                  setState(() {
                                    currentValue++;
                                    serialController.text =
                                        currentValue.toString();
                                  });
                                  // print(currentValue);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black,
                                    ),
                                  ),
                                  height: 50,
                                  width: 100,
                                  child: Icon(Icons.add),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  int currentValue =
                                      int.parse(serialController.text);
                                  setState(() {
                                    currentValue--;
                                    serialController.text =
                                        currentValue.toString();
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.black,
                                    ),
                                  ),
                                  height: 50,
                                  width: 100,
                                  child: Icon(Icons.remove),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          //...........................Without date................

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
                                  height: screenHeight * 0.180,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.black,
                                    ),
                                  ),
                                  child: Container(
                                    width: screenWidth * 0.200,
                                    child: TextField(
                                      controller: withoutDateController,
                                      maxLines: 10,
                                      decoration: InputDecoration(
                                        fillColor: Colors.red,
                                        hoverColor: Colors.red,
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
                                    if (withoutDateController.text.isNotEmpty) {
                                      List mylines = withoutDateController.text
                                          .split("\n");

                                      finaData_1 = mylines[0];

                                      finaData_2 = mylines[1];

                                      finaData_3 = mylines[2].substring(
                                          0, mylines[2].indexOf("@") + 1);

                                      finaData_4 = mylines[2].substring(
                                          mylines[2].indexOf("@") + 1,
                                          mylines[2].indexOf('✅') + 1);

                                      finaData_5 =
                                          withoutDateController.text.substring(
                                        withoutDateController.text
                                                .indexOf('✅') +
                                            1,
                                        withoutDateController.text.length,
                                      );

                                      print(finaData_1);
                                      print(finaData_2);
                                      print(finaData_3);
                                      print(finaData_4);
                                      print(finaData_5);

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
                                      Map<String, String> tipslist = {
                                        "legue": finaData_1,
                                        "team": finaData_2,
                                        "score1": finaData_3,
                                        "score2": finaData_4,
                                        "date": finaData_5,
                                      };
                                      // mydata.push().set(tipslist).whenComplete(
                                      //     () => Fluttertoast.showToast(
                                      //           msg: "Success",
                                      //           toastLength: Toast.LENGTH_LONG,
                                      //           gravity: ToastGravity.TOP_LEFT,
                                      //           timeInSecForIosWeb: 1,
                                      //           backgroundColor: Colors.red,
                                      //           textColor: Colors.white,
                                      //           fontSize: 16.0,
                                      //         ));

                                      mydata
                                          .child("${serialController.text}")
                                          // "${"-" + serialController.text}")
                                          .set({
                                        "legue": finaData_1,
                                        "team": finaData_2,
                                        "score1": finaData_3,
                                        "score2": finaData_4,
                                        "date": finaData_5,
                                      });

                                      withoutDateController.clear();
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

                          SizedBox(
                            height: screenHeight * 0.020,
                          ),
                          Wrap(
                            children: [
                              categorySelect("Old Elite", 0xff2464fa,
                                  "__Elite Vip Success Tips"),
                              SizedBox(
                                width: 10,
                              ),
                              categorySelect("Old Special", 0xfff29732,
                                  "__Special Vip Success Tips"),
                              SizedBox(
                                width: 10,
                              ),
                              categorySelect("Old Single", 0xff2ba8d9,
                                  "__Single Vip Success Tips"),
                              SizedBox(
                                width: 10,
                              ),
                              categorySelect("Old Half Full", 0xff2ba8d9,
                                  "__HT_FT Vip Success Tips"),
                              SizedBox(
                                width: 10,
                              ),
                              categorySelect("Old 50+", 0xff2ba8d9,
                                  "__50+ Odds Vip Success Tips"),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Working On : ${category.substring(category.toString().indexOf("__") + 2, category.toString().length)}",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.green,
                            ),
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
                    child: Column(
                      children: [
                        Text(
                          category.substring(
                              category.toString().indexOf("__") + 2,
                              category.toString().length),
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.grey,
                            child: FirebaseAnimatedList(
                              query: mydata,
                              itemBuilder:
                                  (context, snapshot, animation, index) {
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
                                                          .child(snapshot.key
                                                              .toString())
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
          ],
        ),
      ),
    );
  }

  Widget categorySelect(String label, int mcolor, String tipsName) {
    return InkWell(
      onTap: () {
        setState(() {
          category = tipsName;
          print(tipsName);
        });
      },
      child: Chip(
        backgroundColor: category == label ? Colors.black : Color(mcolor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        label: Text(
          label,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        labelPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      ),
    );
  }
}
