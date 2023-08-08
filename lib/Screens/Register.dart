
import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterState();

}

class _RegisterState extends State<RegisterPage> {
  bool gst_enable = false;
  String email = "";
  String password = "";
  String company = "";
  String address_1 = "";
  String address_2 = "";
  String city = "";
  int pin = 000000;
  String state = "";
  String country = "";
  String webpage = "";
  int cell_no = 0000000000;
  String company_logo = "";
  int GST_no = 000000000000;
  int contact_person = 0000000000;
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _company = FocusNode();
  final FocusNode _cell_no = FocusNode();
  final FocusNode _contact_person = FocusNode();
  Future<void> insertDataIntoDatabase() async {

    final settings = ConnectionSettings(
      host: '107.180.34.197',
      port: 3306,
      user: 'Udhyog_Gold',
      password: 'U4@2019',
      db: 'gold_purity',
    );

    final conn = await MySqlConnection.connect(settings);
    void _showSnackBar(BuildContext context, String message) {
      final snackBar = SnackBar(
        content: Text(message),
        duration: Duration(seconds: 3),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    if(company.isEmpty){
      _showSnackBar(context, 'Email Can not be empty');
    } /*if(cell_no==0){
      _showSnackBar(context, 'Cell No. Can not be empty');
    } if(contact_person==0){
      _showSnackBar(context, 'Contact Person Can not be empty');
    }*/
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                                  focusNode: _company,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      company = value; // Update the pin variable when the value changes
                                    });
                                  },
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
                                  onChanged: (value) {
                                    setState(() {
                                      address_1 = value; // Update the pin variable when the value changes
                                    });
                                  },
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
                                  onChanged: (value) {
                                    setState(() {
                                      address_2 = value; // Update the pin variable when the value changes
                                    });
                                  },
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
                                  onChanged: (value) {
                                    setState(() {
                                      city = value; // Update the pin variable when the value changes
                                    });
                                  },
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
                                  onChanged: (value) {
                                    setState(() {
                                      pin = value as int; // Update the pin variable when the value changes
                                    });
                                  },
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
                                  onChanged: (value) {
                                    setState(() {
                                      state = value; // Update the pin variable when the value changes
                                    });
                                  },
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
                                  onChanged: (value) {
                                    setState(() {
                                      country = value; // Update the pin variable when the value changes
                                    });
                                  },
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
                                  onChanged: (value) {
                                    setState(() {
                                      webpage = value; // Update the pin variable when the value changes
                                    });
                                  },
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
                                  focusNode: _emailFocusNode,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      email = value; // Update the pin variable when the value changes
                                    });
                                  },
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
                                  focusNode: _cell_no,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      cell_no = value as int; // Update the pin variable when the value changes
                                    });
                                  },
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
                                child: Text(
                                    "GST",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    )
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width:150,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                gst_enable = true; // Show the GST field
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.green, // Change the button color here
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5), // Change the border radius here
                                              ),
                                            ),
                                            child: Text(
                                              "Yes",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              setState(() {
                                                gst_enable = false; // Hide the GST field
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.green, // Change the button color here
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5), // Change the border radius here
                                              ),
                                            ),
                                            child: Text(
                                              "No",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Visibility(
                            visible: gst_enable,
                            child: Column(
                              children: [
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
                                        onChanged: (value) {
                                          setState(() {
                                            GST_no = value as int; // Update the pin variable when the value changes
                                          });
                                        },
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                              ],
                            ),
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
                                  focusNode: _contact_person,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      contact_person = value as int; // Update the pin variable when the value changes
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                          ElevatedButton(
                            onPressed: (){
                              insertDataIntoDatabase();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green, // Change the button color here
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5), // Change the border radius here
                              ),
                            ),
                            child: Text(
                                "Save",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                )
                            ),
                          ),
                        ],)
                      ],
                      )
                    ],
                  )
              ),
            ],),
        ),
      )
    );
  }
}
