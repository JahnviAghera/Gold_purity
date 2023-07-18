import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
import 'Main_page.dart';
import 'Register2.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Function to handle login button press
  Future<void> _handleLogin() async {
    // Database connection configuration
    final conn = await MySqlConnection.connect(ConnectionSettings(
      host: '10.0.2.2',
      port: 3306,
      user: 'root',
      db: 'testdb',
    ));

    try {
      final Results result = await conn.query(
        'SELECT * FROM users WHERE email = ? AND password = ?',
        [_usernameController.text, _passwordController.text],
      );

      if (result.isNotEmpty) {
        // User credentials are valid, perform login action
        print('Login successful!');
        String email = _usernameController.text; // Get the email value
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MainPage(), // Pass the email value
          ),
        );
      } else {
        // User credentials are invalid, display an error message
        print('Invalid username or password');
      }
    } catch (e) {
      // Error occurred while connecting to the database
      print('Error: $e');
    } finally {
      await conn.close();
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
                    "Udhyog 4.0 (U4) is a start-up initiation by professionals in 2019, and mainly provides technological solutions related to emerging technologies such as Industry 4.0. This in turn transforms existing industrial setups into SMART and sustainable manufacturing setups.",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify
                    ,
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
                    controller: _usernameController, // Add this line
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
                    controller: _passwordController,
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
                          onPressed: _handleLogin, // Update this line
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
