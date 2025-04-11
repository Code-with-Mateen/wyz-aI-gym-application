// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/appcolors.dart';
import '../widgets/app_button.dart';
import '../widgets/app_field.dart';
import 'login.dart';
import 'otp.dart';


class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> login()));
              },
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              )),
          centerTitle: true,
          title: Text("Sign up",
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
                "Create an account",
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height / 100,
            // ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: AppField(
                hintText: "First Name",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: AppField(
                hintText: "Last Name",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: AppField(
                hintText: "Email",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: AppField(
                hintText: "Phone Number",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: AppField(
                hintText: "Password",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: AppField(
                hintText: "Retype Password",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
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
              height: MediaQuery.of(context).size.height / 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
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
                    "Signin",
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
                        MaterialPageRoute(builder: ((context) => login())));
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
