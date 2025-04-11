import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/apppadding.dart';
import '../widgets/app_button.dart';
import 'login.dart';

class resetscs extends StatefulWidget {
  const resetscs({super.key});

  @override
  State<resetscs> createState() => _resetscsState();
}

class _resetscsState extends State<resetscs> {
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
              padding: const EdgeInsets.only(top: 0),
              child: Text(
                "Password Changed!",
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
              padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
              child: Text(
                "Your Password has been changed successfully.",
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
              btnText: "Back to Sign In",
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const login();
                })
                );
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