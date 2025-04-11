// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'package:pinput/pinput.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/appcolors.dart';
import '../constants/apppadding.dart';
import '../widgets/app_button.dart';
import '../widgets/app_text 2.dart';
import 'login.dart';
import 'newpass.dart';



class resetotp extends StatefulWidget {
  const resetotp({super.key});

  @override
  State<resetotp> createState() => _resetotpState();
}

class _resetotpState extends State<resetotp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const login())));
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              )),
          centerTitle: true,
          title: Text("OTP ",
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displayMedium,
                fontSize: 18,
                color: Colors.black,
              ))),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              const AppText(
                text: "OTP Verification",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.66,
                child: const AppText(
                  text: "Please enter OTP code sent to you",
                  textAlign: TextAlign.center,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 45),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Pinput(
                  slideTransitionBeginOffset: const Offset(2, 0),
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedpin,
                  submittedPinTheme: submited,
                ),
              ),
              const SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(text: "Didn't get any code? "),
                 InkWell(
                  onTap: (){},
                  child:  AppText(
                    text: "Resend",
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                 ),
                ],
              ),
              const SizedBox(height: 45),
              AppButton(
                  btnText: "Verify",
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const newpass();
                    }));
                  })
            ],
          ),
        ),
      ),
    );
  }

  final submited = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      color: const Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.circular(15),
    ),
  );

  final focusedpin = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      color: const Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.circular(15),
    ),
  );
  final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(15),
      ));
}
