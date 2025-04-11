import 'package:flutter/material.dart';
import 'package:wyz/constants/appcolors.dart';
import 'package:wyz/widgets/app_button.dart';
import 'package:wyz/widgets/app_text%202.dart';

import 'chatscreen.dart';

class AiCoach extends StatefulWidget {
  const AiCoach({super.key});

  @override
  State<AiCoach> createState() => _AiCoachState();
}

class _AiCoachState extends State<AiCoach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Center(
                child: AppText(
                  text: 
                  'AI Coach',
                 fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: AppColors.primaryColor,
                  ),
                ),
              
            
           SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Padding(padding: EdgeInsets.only(left: 10, right: 10,),
          child:   AppText(
              textAlign: TextAlign.justify,
              text: 
                'AI Coach is designed to be your personal fitness and mental health companion, providing you with the tools and support you need to achieve your goals.',),
          
          ),
         SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Image.asset('assets/ai.png'),
             SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          
             AppButton(btnText: "Continue", ontap: () { 
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(),),);
             },),    

          ],
        ),
      ),
    );
  }
}