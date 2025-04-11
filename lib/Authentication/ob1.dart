import 'package:flutter/material.dart';
import 'package:wyz/Authentication/login.dart';
import 'package:wyz/Authentication/signup.dart';
import 'package:wyz/widgets/app_button2.dart';
import '../widgets/app_button.dart'; 
import '../widgets/app_text 2.dart';

class ob1 extends StatefulWidget {
  const ob1({super.key});

  @override
  State<ob1> createState() => _ob1State();
}

class _ob1State extends State<ob1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
         SizedBox(
            width: MediaQuery.of(context).size.width/1,
            height: MediaQuery.of(context).size.height/1
            ,
          child:  Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/ob1.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
         ),
          // Main content
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height/1.9,
                ),
                Center(
                  child: AppText(text: "WYZFIT", color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),
                ),
                
                 SizedBox(
                  height: MediaQuery.of(context).size.height/10,
                ),
             AppButton2(
                  btnText:  "Get Started",
                  ontap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => signup()));
                  },
                ),
                  SizedBox(
                  height: MediaQuery.of(context).size.height/50,
                ),
                AppButton(
                  btnText:  "Login",
                  ontap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}