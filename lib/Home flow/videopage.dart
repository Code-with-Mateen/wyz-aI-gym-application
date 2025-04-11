import 'package:flutter/material.dart';

import '../widgets/app_text 2.dart';


class ChestBicepsScreen extends StatelessWidget {
  final List<Map<String, String>> episodes = [
    {"time": "00:30", "title": "Bench Press", "desc": "Targets the chest, shoulders, and triceps."},
    {"time": "00:21", "title": "Incline Bench Press", "desc": "Focuses on the upper chest."},
    {"time": "00:30", "title": "Dumbbell Flyes", "desc": "Stretches and works the chest muscles."},
    {"time": "01:21", "title": "Push-Ups", "desc": "A bodyweight exercise for chest and triceps."},
    {"time": "01:45", "title": "Chest Dips", "desc": "Emphasizes the lower chest."},
    {"time": "01:50", "title": "Cable Crossovers", "desc": "Provides a full range of motion for the chest."},
    {"time": "02:00", "title": "Decline Bench Press", "desc": "Targets the lower part of the chest."},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        } , icon: Icon(Icons.arrow_back_ios_new, color: Colors.black)),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
               
                AppText(
                  text: 
                  'Chest, Biceps', fontSize: 24, fontWeight: FontWeight.bold),
                SizedBox(height: 16),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/chest.png',
                        width: double.infinity,
                        height: size.height * 0.25,
                        fit: BoxFit.cover,
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(Icons.play_circle_fill, size: 60, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                AppText(
                  text: 
                  "Episodes", fontSize: 18, fontWeight: FontWeight.bold),
                SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: episodes.map((episode) {
                      return ListTile(
                        leading: AppText(
                          text: 
                          episode["time"]!, fontWeight: FontWeight.bold),
                        title: AppText(
                          text: 
                          episode["title"]!,fontSize: 16),
                        subtitle: AppText(
                          text: 
                          episode["desc"]!),
                        trailing: Icon(Icons.play_circle_outline),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 20),
                AppText(
                  text: 
                  "This week also", fontSize: 18, fontWeight: FontWeight.bold),
                SizedBox(height: 10),
                workoutCard("Triceps, Back", "Wednesday, Thursday"),
                SizedBox(height: 10),
                workoutCard("Legs, Shoulders", "Friday, Saturday"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget workoutCard(String title, String days) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage('assets/bicep1.png'),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                    text:
                  title, fontSize: 16, fontWeight: FontWeight.bold),
                AppText(
                  text: 
                  days),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
            child: AppText(
              text: 
              "Start" ,
              color: Colors.white,
              ),
          ),
        ],
      ),
    );
  }
}
