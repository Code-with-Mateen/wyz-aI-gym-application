
import 'package:flutter/material.dart';
import 'package:wyz/assesments/subscription.dart' show SubscriptionScreen;

import '../constants/appcolors.dart';
import '../widgets/app_text 2.dart' show AppText;


class sp3 extends StatefulWidget {
  const sp3({super.key});

  @override
  State<sp3> createState() => _sp3State();
}

class _sp3State extends State<sp3> {
   @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 5),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SubscriptionScreen()),
            )
            );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.primaryColor,
      body: Center(
        child: SizedBox(
         
          child: AppText(text:"We’re setting everything up for you! ",
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