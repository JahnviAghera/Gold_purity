import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
import 'Register.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterPage2 extends StatefulWidget {
  const RegisterPage2({Key? key}) : super(key: key);

  @override
  State<RegisterPage2> createState() => _RegisterState2();
}

class _RegisterState2 extends State<RegisterPage2> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirm_password = TextEditingController();
  Future<void> addData() async {
    final conn = await MySqlConnection.connect(ConnectionSettings(
      host: '10.0.2.2',
      port: 3306,
      user: 'root',
      db: 'testdb',
    ));
    final Results result = await conn.query(
      'SELECT id FROM users WHERE email = ?',
      [email.text],
    );
    if (result.isNotEmpty) {
      // showCustomToast();
      print('An account with this email already exists.');
      //TODO: add a error showing text (account exists)
      return; // Exit the function if account already exists
    }else{
      handleContinueButtonPressed();
    }
  }
  void showCustomToast() {
    Fluttertoast.showToast(
      msg: 'An account with this email already exists.',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.grey[700],
      textColor: Colors.white,
    );
  }
  void handleContinueButtonPressed() {
    String enteredEmail = email.text;
    String enteredPassword = password.text;
    String enteredConfirmPassword = confirm_password.text;

    if (enteredPassword == enteredConfirmPassword) {
      // Password and confirmation match, navigate to Registration page
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RegisterPage(
            email: enteredEmail,
            password: enteredPassword,
          ),
        ),
      );
    } else {
      // Password and confirmation do not match, show an error message
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Password and Confirm Password do not match.'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

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
            SizedBox(
              height: 27.26,
            ),
            Container(
              width: 322,
              child: Center(
                child: Align(
                  child: Text(
                    "Udhyog 4.0 (U4) is a start-up initiation by professionals in 2019, and mainly provides technological solutions related to emerging technologies such as Industry 4.0. This in turn transform existing industrial setup into SMART and sustainable manufacturing setup.",
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
                    controller: email,
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
                    controller: password,
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
                  TextField(
                    controller: confirm_password,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: addData,
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Text(
                            'Continue',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
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