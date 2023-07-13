import 'package:flutter/material.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterState();

}

class _RegisterState extends State<RegisterPage> {

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
              height: 10,
            ),
            Text("Register",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                  children: [
              Stack(children: [    Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 101,
                      child: Text(
                          "Company",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 26,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      width: 101,
                      child: Text(
                          "Address 1",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 26,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      width: 101,
                      child: Text(
                          "Address 2",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 26,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      width: 101,
                      child: Text(
                          "City",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 26,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      width: 101,
                      child: Text(
                          "Pin",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 26,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      width: 101,
                      child: Text(
                          "State",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 26,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      width: 101,
                      child: Text(
                          "Country",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 26,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      width: 101,
                      child: Text(
                          "Webpage       (if any)",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 26,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      width: 101,
                      child: Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 26,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      width: 101,
                      child: Text(
                          "Cell No.",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 26,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 231,
                      child: Text(
                          "Company Logo (in jpeg, jpg, png)",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: (){

                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green, // Change the button color here
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5), // Change the border radius here
                          ),
                        ),
                        child: Text(
                            "Upload",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 231,
                      child: Text(
                          "Company Logo (in jpeg, jpg, png)",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          child: ElevatedButton(
                            onPressed: (){

                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green, // Change the button color here
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5), // Change the border radius here
                              ),
                            ),
                            child: Text(
                                "Upload",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                )
                            ),
                          ),
                        ),
                        Container(
                          child: ElevatedButton(
                            onPressed: (){

                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green, // Change the button color here
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5), // Change the border radius here
                              ),
                            ),
                            child: Text(
                                "Upload",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                )
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      width: 101,
                      child: Text(
                          "GST No.",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 26,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      width: 101,
                      child: Text(
                          "Contact Person",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 26,
                      child: TextField(
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                    )
                  ],
                ),
              ],)
    ],
    )
          ],
        )
    ),
      ],),
    ),
    );
  }
}
