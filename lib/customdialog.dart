import 'package:flutter/material.dart';

void showDialogBox(BuildContext context) {
  showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
          title: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.clear, color: Colors.green))),
          content: SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            // height: 480,
            // width: 200,
            width: MediaQuery.of(context).size.width / 2,
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Mahmudul",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4F7C87),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Mahmudul",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff4F7C87),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 43,
                  width: 600,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.withOpacity(0.4)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                        contentPadding: EdgeInsets.only(left: 10)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 35,
                  width: 600,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff4F7C87)),
                  child: Center(
                      child: Text(
                    "Get the E-BOOK",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                )
              ],
            ),
          ),
        );
      });
}
