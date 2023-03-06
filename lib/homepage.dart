import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.030,
              ),
              Text("Free Version"),
              SizedBox(
                height: screenHeight * 0.030,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text("Today"),
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: TextField(
                            maxLines: 5,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(color: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "ADD DATA",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text("Daily 5 Plus"),
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: TextField(
                            maxLines: 5,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(color: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "ADD DATA",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text("Sure"),
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: TextField(
                            maxLines: 5,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(color: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "ADD DATA",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text("Combo"),
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: TextField(
                            maxLines: 5,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(color: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "ADD DATA",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text("Bonus"),
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.black),
                          ),
                          child: TextField(
                            maxLines: 5,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(color: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "ADD DATA",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
