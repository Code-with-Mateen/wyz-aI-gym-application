import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/app_button.dart';
import '../widgets/app_field.dart';
import 'resetscs.dart';
// ignore: camel_case_types
class newpass extends StatefulWidget {
  const newpass({super.key});

  @override
  State<newpass> createState() => _newpassState();
}

class _newpassState extends State<newpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              )),
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("Reset Password",
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
              SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 20),
              child: Text(
                "Create New Password",
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
              height: MediaQuery.of(context).size.height / 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
              child: Text(
                "Setup your password so you can Login and access WYZ!",
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.displaySmall,
                  fontSize: 14,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: AppField(
                hintText: "Enter Password",
              ),
            ),
             SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: AppField(
                hintText: "Re-type Password",
              ),
            ),
            
           SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
           
          
           const SizedBox(
              height: 50,
            ),
            Center(
              child: AppButton(
                btnText: "Submit",
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => const resetscs())));
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
          
          ],
        ),
      ),
    
    );
  }
}