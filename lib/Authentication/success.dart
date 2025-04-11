// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../assesments/1.dart';
import '../constants/appcolors.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
      child: Scaffold(
      backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Image(image: AssetImage("assets/s.png")),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: Text(
                    "Verification Successful",
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Text(
                    "We have been verified your information successfully. Now You can "
                    "make transactions!",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => first()));
                        },
                        color: AppColors.primaryColor,
                        child: Text(
                          "Go to Assessment",
                          style: GoogleFonts.poppins(
                            textStyle:
                                Theme.of(context).textTheme.displayMedium,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        height: MediaQuery.of(context).size.height * 0.07,
                        minWidth: MediaQuery.of(context).size.width / 1.1,
                        elevation: 10,
                        highlightElevation: 10,
                        focusElevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(14),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    ),
    );
  }
}
