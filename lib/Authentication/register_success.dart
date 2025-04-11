// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wyz/assesments/1.dart' show first;

import '../constants/apppadding.dart';
import '../widgets/app_button.dart';

class SuccessfullRegister extends StatelessWidget {
  const SuccessfullRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
         automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: AppPadding.defaultPadding,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset("assets/s.png"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: Text(
                "Registration Success!",
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displaySmall,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, left: 10, right: 10),
              child: Text(
                "Your Account has been successfully created.",
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displaySmall,
                  fontSize: 14,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            AppButton(
              btnText: "Continue To Assessment",
              ontap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => first()));
              },
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      )
    );
  }
}
