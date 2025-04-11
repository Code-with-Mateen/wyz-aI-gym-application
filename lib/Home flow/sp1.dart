
import 'package:flutter/material.dart';
import 'package:wyz/assesments/subscription.dart' show SubscriptionScreen;

import '../constants/appcolors.dart';
import '../widgets/app_text 2.dart' show AppText;
import 'exercise.dart';


class sp1 extends StatefulWidget {
  const sp1({super.key});

  @override
  State<sp1> createState() => _sp1State();
}

class _sp1State extends State<sp1> {
   @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 2),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StretchingScreen()),
            )
            );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.primaryColor,
      body: Center(
        child: SizedBox(
         
          child: AppText(text:"Get ready",
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.center,
          ),
        ),
        ),
        
      
    );
  }
}