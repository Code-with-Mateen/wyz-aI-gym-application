import 'package:flutter/material.dart';
import 'package:wyz/widgets/app_button2.dart';

import '../widgets/app_button.dart';
import 'challenge.dart';


class StretchingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.close, size: 28),
                      Text(
                        'Arms streching',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Opacity(
                        opacity: 0.0,
                        child: Icon(Icons.close), // To center the title
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Stack(
                    children: [
                      Container(
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.8,
                        child: Container(
                          height: 6,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
                    children: [
                      SizedBox(
                        height: size.height * 0.6, // Reduced height for the image container
                        width: size.width * 0.8,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset('assets/arm2.png', fit: BoxFit.contain),
                            Text(
                              '20',
                              style: TextStyle(
                                fontSize: size.width * 0.3,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  SizedBox(
                    width: size.width * 0.4,
                    child:   AppButton2(btnText: "Previous", ontap: () {
                      Navigator.pop(context);
                    }),
                  ),
                
                    SizedBox(
                    width: size.width * 0.4,
                    child:   AppButton(btnText: "Next", ontap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChallengeScreen(),));
                    }),
                  ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,  
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
