import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
import 'Register.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpState();

}

class _SignUpState extends State<SignUpPage> {
  String email = "";
  String password = "";
  Future<void> signin() async {

    final settings = ConnectionSettings(
      /*host: '10.0.2.2',
      port: 3306,
      user: 'root',
      db: 'gold_purity',*/
      host: '107.180.34.197',
      port: 3306,
      user: 'Udhyog_Gold',
      password: 'U4@2019',
      db: 'gold_purity',
    );

    final conn = await MySqlConnection.connect(settings);

    try {
      final result = await conn.query(
        'SELECT * FROM users WHERE email = ? AND password = ?', // Replace 'users' with your actual table name
        [email, password],
      );

      if (result.isNotEmpty) {
        // User with matching credentials found, login successful
        print('Login successful!');
      } else {
        // User with given email and password not found
        print('Invalid email or password. Please try again.');
      }
    } catch (e) {
      print('Error during login: $e');
    } finally {
      await conn.close();
    }
  }
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
                )
              )
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
                      prefixIcon: Icon(Icons.person_outlined)
                    ),
                    onChanged: (value) {
                      setState(() {
                        email = value; // Update the pin variable when the value changes
                      });
                    },
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
                        prefixIcon: Icon(Icons.lock)
                    ),
                    onChanged: (value) {
                      setState(() {
                        password = value; // Update the pin variable when the value changes
                      });
                    },
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
                              MaterialPageRoute(builder: (context) =>RegisterPage())
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green, // Change the button color here
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5), // Change the border radius here
                            ),
                          ),
                          child: Text('Register',
                            style: TextStyle(
                              color: Colors.white, // Change the text color here
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            signin();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green, // Change the button color here
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5), // Change the border radius here
                            ),
                          ),
                          child: Text('Login',
                            style: TextStyle(
                              color: Colors.white, // Change the text color here
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(onPressed: (){},
                      child: Text("Forgot Password",
                      style: TextStyle(
                        color: Colors.green,
                      ),))
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
