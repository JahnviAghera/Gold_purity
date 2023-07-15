import 'package:flutter/material.dart';
import 'Register2.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPage> {
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
            SizedBox(
              height: 27.26,
            ),
            Container(
              width: 322,
              child: Center(
                child: Align(
                  child: Text(
                    "Udhyog 4.0 (U4) is a start-up initiation by professionals in 2019, and mainly provides technological solutions related to emerging technologies such as Industry 4.0. This in turn transforms existing industrial setups into SMART and sustainable manufacturing setups.",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Container(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'User Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RegisterPage2()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            // Button action
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Colors.green,
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