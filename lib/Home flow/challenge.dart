import 'package:flutter/material.dart';
import 'package:wyz/Home%20flow/usernev.dart';
import 'package:wyz/widgets/app_button.dart';
import 'package:wyz/widgets/app_text%202.dart';

class ChallengeScreen extends StatelessWidget {
  final List<Map<String, String>> progressList = [
    {"day": "Monday", "date": "3/16/2022", "time": "34 minutes"},
    {"day": "Sunday", "date": "3/15/2022", "time": "48 minutes"},
    {"day": "Saturday", "date": "3/14/2022", "time": "40 minutes"},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height * 0.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/bg.png'), // replace with your image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child:IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 28)),
                ),
                Positioned(
                  top: 50,
                  right: 20,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.white),
                        SizedBox(width: 5),
                        AppText(
                          text: 
                          "4.6",
                          color: Colors.white),
                        
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  child: Row(
                    children: [
                 
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 AppText(
                  text: 
                    "30 days challenge",
                  fontSize: 24, fontWeight: FontWeight.w600
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 8),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                text: 
                                "Keep going!",
                                
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                              SizedBox(height: 6),
                              AppText(
                                text: "24/30 trainings"),
                              SizedBox(height: 8),
                              LinearProgressIndicator(
                                value: 0.8,
                                backgroundColor: Colors.grey.shade300,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.deepPurple),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16),
                        AppText(
                          text: 
                          "80%",
                        
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple),
                        
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  AppText(
                    text: 
                    "YOUR PROGRESS",
                    
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700),
                  
                  SizedBox(height: 10),
                  ...progressList.map((e) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/work.png', // same asset for demo
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                text: 
                                e["day"]!,
                               
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              
                            AppText(
                              text: 
                                e["date"]!,
                               color: Colors.grey),
                              
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Icon(Icons.timer_outlined, color: Colors.deepPurple),
                              SizedBox(width: 4),
                              AppText(
                                text: 
                                e["time"]!,
                                 color: Colors.deepPurple),
                            ],
                          )
                        ],
                      ),
                    );
                  }).toList()
                ],
              ),
            ),
            SizedBox(height: 20),
            AppButton(btnText: "Back to Home", ontap: () {
              Navigator.push(context, MaterialPageRoute(builder:  (context) => usernev()));
            }),
                        SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
