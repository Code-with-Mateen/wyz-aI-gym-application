// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../constants/appcolors.dart';
import 'forgot pass.dart';
import '../widgets/app_button.dart';
import '../widgets/app_field.dart';
import 'otp.dart';
import 'signup.dart';


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
          // leading: IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.arrow_back_ios_new_outlined,
          //       color: Colors.black,
          //     )),
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("Sign in",
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displayMedium,
                fontSize: 18,
                color: Colors.black,
              ))),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30, left: 20),
              child: Text(
                "Hi There!",
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, left: 20, right: 20),
              child: Text(
                "Welcome back, Sign in to your account",
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displaySmall,
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: AppField(
                hintText: "Email",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: AppField(
                hintText: "Password",
                suffixIcon: Icon(Icons.visibility_off_outlined),
              ),
            ),
           SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
           Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 15, top: 0),
              child:  TextButton(
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 26,
                      fontFamily: "SF Pro Display",
                      color: AppColors.seccolor,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => forgotpass())));
                  },
                ),
              ),
            ],
            
           ),
           SizedBox(
              height: 50,
            ),
            Center(
              child: AppButton(
                btnText: "Continue",
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Otp())));
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 26,
                    fontFamily: "SF Pro Display",
                    color: Colors.black,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextButton(
                  child: Text(
                    "Signup",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 26,
                      fontFamily: "SF Pro Display",
                      color: AppColors.seccolor,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => signup())));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
