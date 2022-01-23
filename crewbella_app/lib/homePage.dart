// ignore_for_file: use_key_in_widget_constructors

import 'package:crewbella_app/profilePage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: 900,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 50,
              top: 50,
              child: Text(
                "Crewbella",
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 110,
              left: 60,
              child: Text(
                "let's get you started!",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Positioned(
              top: 250,
              left: 90,
              child: Container(
                height: 30,
                width: 350,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    // enabledBorder: InputBorder(borderSide: BorderSide.),
                    hintText: "Phone Number",
                  ),
                ),
              ),
            ),
            Positioned(
              top: 350,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()),);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 500.0),
                  height: 70,
                  width: 400,
                  color: Colors.red,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: 10,
                        child: Text(
                          "CONTINUE",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        child: Text(
                          "Account Creation Or Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
