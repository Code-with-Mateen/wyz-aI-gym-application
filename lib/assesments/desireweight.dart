import 'package:flutter/material.dart';
import 'package:wyz/assesments/5.dart';
import 'package:wyz/widgets/app_field.dart';

import '../constants/appcolors.dart';
import '../widgets/app_button.dart';
import '../widgets/app_text 2.dart';

class desireweight extends StatefulWidget {
  const desireweight({super.key});

  @override
  State<desireweight> createState() => _desireweightState();
}

class _desireweightState extends State<desireweight> {
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
          icon: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
        ),
        centerTitle: true,
       
        actions: [
          AppText(text: "8 of 12", color: AppColors.primaryColor,
          fontWeight: FontWeight.w600,
          
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Center(
              child: AppText(
                text: "What is your desired weight? ",
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 60),
            Column(
              children: [
               AppField(
                hintText: "Enter your desired weight",
                
               ),  
                const SizedBox(height: 20), // Space between each container
              ],
            ),
            
             SizedBox(
              height: 50,
            ),
            Center(
              child: AppButton(
                btnText: "Next",
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Fifth())));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}