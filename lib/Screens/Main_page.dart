import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(28.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/1.png",
                  width: 74,
                  height: 45.744140625,
                ),
                Image.asset(
                  "assets/images/2.png",
                  width: 74,
                  height: 45.744140625,
                ),
              ],
            ),
            SizedBox(height: 27.26),
            Container(
              width: 352,
              height: 35,
              padding: EdgeInsets.only(top: 8, left: 18.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xff63d47a),
              ),
              child: Text(
                "User Name - City",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              width: 352,
              height: 108,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xfffaaa55),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 8,
                    left: 10,
                    child: Text(
                      "Process Monitoring",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    left: 10,
                    child: Container(
                      width: 288,
                      child: Text(
                        "Track, measure and monitor entire process, purchase to dispatch and from production to management level.",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                        maxLines: 4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add,color: Colors.white,),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            backgroundColor: Color(0xff63d47a), // Set the desired background color here
          ),
        ),
      ),
    );
  }
}
