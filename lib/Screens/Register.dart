import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';

class RegisterPage extends StatefulWidget {
  final String email;
  final String password;

  const RegisterPage({Key? key, required this.email, required this.password}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  final TextEditingController company = TextEditingController();
  final TextEditingController address_1 = TextEditingController();
  final TextEditingController address_2 = TextEditingController();
  final TextEditingController city = TextEditingController();
  final TextEditingController pin = TextEditingController();
  final TextEditingController state = TextEditingController();
  final TextEditingController country = TextEditingController();
  final TextEditingController webpage = TextEditingController();
  final TextEditingController companyEmail = TextEditingController();
  final TextEditingController cell_no = TextEditingController();
  final TextEditingController company_logo = TextEditingController();
  final TextEditingController GST_no = TextEditingController();
  final TextEditingController contact_person = TextEditingController();

  Future<void> addData() async {
    final conn = await MySqlConnection.connect(ConnectionSettings(
      host: '10.0.2.2',
      port: 3306,
      user: 'root',
      db: 'testdb',
    ));
    await conn.query(
      'CREATE TABLE IF NOT EXISTS users (id int NOT NULL AUTO_INCREMENT PRIMARY KEY, email varchar(255), password varchar(255), company varchar(255), address_1 varchar(255), address_2 varchar(255), city varchar(255), pin varchar(255), state varchar(255), country varchar(255), webpage varchar(1000), cell_no int(20), company_logo varchar(1000), GST_no int(20), contact_person int(20))',
    );
    // Insert data from text input fields
    var result = await conn.query(
      'INSERT INTO users (email, password, company, address_1, address_2, city, pin, state, country, webpage, cell_no, company_logo, GST_no, contact_person) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
      [
        widget.email,
        widget.password,
        company.text,
        address_1.text,
        address_2.text,
        city.text,
        pin.text,
        state.text,
        country.text,
        webpage.text,
        cell_no.text,
        company_logo.text,
        GST_no.text,
        contact_person.text,
      ],
    );
    print('Inserted row id=${result.insertId}');

    // Close the connection
    await conn.close();
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
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Register",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Column(
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
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 26,
                                child: TextField(
                                  controller: company,
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
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 26,
                                child: TextField(
                                  controller: address_1,
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
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 26,
                                child: TextField(
                                  controller: address_2,
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
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 26,
                                child: TextField(
                                  controller: city,
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
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 26,
                                child: TextField(
                                  controller: pin,
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
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 26,
                                child: TextField(
                                  controller: state,
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
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 26,
                                child: TextField(
                                  controller: country,
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
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 26,
                                child: TextField(
                                  controller: webpage,
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
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 26,
                                child: TextField(
                                  controller: companyEmail,
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
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 26,
                                child: TextField(
                                  controller: cell_no,
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
                                  ),
                                ),
                              ),
                              Container(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: Text(
                                    "Upload",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
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
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 150,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.green,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5),
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
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.green,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5),
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
                                        )
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
                          Row(
                            children: [
                              Container(
                                width: 101,
                                child: Text(
                                  "GST No.",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 26,
                                child: TextField(
                                  controller: GST_no,
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
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                height: 26,
                                child: TextField(
                                  controller: contact_person,
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
                          ElevatedButton(
                            onPressed: () {
                              addData();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Text(
                              "Save",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
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



