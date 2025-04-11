import 'package:flutter/material.dart';

import '../widgets/app_text 2.dart';
import 'videopage.dart';

class GymScreen extends StatelessWidget {
  final List<Map<String, String>> exercises = [
    {
      "title": "Doing Build Muscles",
      "image": "assets/mus1.png",
      "duration": "Finish this exercise in 10 minutes"
    },
    {
      "title": "Doing leg stretch",
      "image": "assets/leg1.png",
      "duration": "Finish this exercise in 15 minutes"
    },
    {
      "title": "Lifting Belly",
      "image": "assets/leg2.png",
      "duration": "Finish this exercise in 15 minutes"
    },
    {
      "title": "High Jump",
      "image": "assets/leg3.png",
      "duration": "Finish this exercise in 15 minutes"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    List<Map<String, String>> week = [
      {"day": "12", "label": "Mon"},
      {"day": "13", "label": "Tue"},
      {"day": "14", "label": "Wed"},
      {"day": "15", "label": "Thu"},
      {"day": "16", "label": "Fri"},
      {"day": "17", "label": "Sat"},
      {"day": "18", "label": "Sun"},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.02),
              Center(
                child: AppText(
                  text: 'Gym',
                  fontSize: size.width * 0.05,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              SizedBox(
                height: size.height * 0.08, // Responsive height for the calendar
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal, // Enable horizontal scrolling
                  child: Row(
                    children: week.map((day) {
                      bool isSelected = day['day'] == "15"; // Example selected day
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: size.width * 0.015),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(size.width * 0.03),
                              decoration: BoxDecoration(
                                color: isSelected ? Colors.deepPurple : Colors.transparent,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  AppText(
                                    text: day['day']!,
                                    color: isSelected ? Colors.white : Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.04,
                                  ),
                                  AppText(
                                    text: day['label']!,
                                    color: isSelected ? Colors.white : Colors.grey.shade600,
                                    fontSize: size.width * 0.03,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Row(
                children: [
                  Expanded(
                    child: AppText(
                      text: "Build Leg Muscles",
                      fontSize: size.width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              AppText(
                text:
                    "Push through the temporary pain—every step gets you closer to your goals. Quit now, and the regret lasts forever",
                color: Colors.grey.shade600,
                fontSize: size.width * 0.035,
              ),
              SizedBox(height: size.height * 0.03),
              Expanded(
                child: ListView.builder(
                  itemCount: exercises.length,
                  itemBuilder: (context, index) {
                    var item = exercises[index];
                    return GestureDetector(
                      onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChestBicepsScreen(),),);
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                item['image']!,
                                width: size.width * 0.18,
                                height: size.width * 0.18,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: size.width * 0.03),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    text: item['title']!,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.04,
                                  ),
                                  SizedBox(height: size.height * 0.005),
                                  AppText(
                                    text: item['duration']!,
                                    fontSize: size.width * 0.035,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: size.width * 0.04, color: Colors.grey.shade600),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: size.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
