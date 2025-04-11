import 'package:flutter/material.dart';
import 'package:wyz/constants/appcolors.dart';

import '../Profile/Notifications.dart';
import '../Profile/profile.dart';
import 'myplan.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                       InkWell(
                          onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> profile())) ;
                          },
                          
                            child: SizedBox(
                             width: MediaQuery.of(context).size.width/7,
                              child: Image.asset("assets/m3.png"),
                            ),
                          
                        ),
                       
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello Mateen!",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700],
                              ),
                            ),
                            Text(
                              "Thursday, 26 Jan",
                              style: TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                       Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Slide()))
                    );
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: Icon(Icons.notifications, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Center(
                  child: Column(
                    children: [
                      Text("1883 Kcal", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text("Total Kilocalories", style: TextStyle(color: Colors.grey[600]))
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStats("7580 m", "Distance"),
                    _buildStats("9832", "Steps"),
                    _buildStats("1248", "Points"),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildBarChart(),
                    _buildBarChart(),
                    _buildBarChart(),
                    _buildBarChart(),
                    _buildBarChart(),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildActivityTile(Icons.fitness_center, "628 Kcal", "Dumbbell", Colors.indigo),
                    _buildActivityTile(Icons.directions_run, "235 Kcal", "Treadmill", Colors.black),
                    _buildActivityTile(Icons.directions_walk, "432 Kcal", "Rope", Colors.black),
                  ],
                ),
                SizedBox(height: 30),
                Text("My Plan", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text("July, 2025", style: TextStyle(color: Colors.grey)),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.greenAccent,
                            child: Icon(Icons.flash_on, color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Body Weight", style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("Workout 1 of 5", style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text("Next exercise", style: TextStyle(color: Colors.grey)),
                      Text("Lower Strength", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recent Plan", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> MyPlanPage()));
                      },
                      child: Text("See all", style: TextStyle(color: AppColors.primaryColor)), 
                    ),
                  ],
                ),
                Text("June, 2025", style: TextStyle(color: Colors.grey)),
                SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildPlanIcon(Icons.fitness_center, "Body Weight"),
                      SizedBox(width: 10),
                      _buildPlanIcon(Icons.directions_run, "Rope"),
                      SizedBox(width: 10),
                      _buildPlanIcon(Icons.directions_walk, "Treadmill"),
                       SizedBox(width: 10),
                      _buildPlanIcon(Icons.directions_bike, "Challenge"),
                    ],
                  ),    
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStats(String value, String label) {
    return Column(
      children: [
        Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(label, style: TextStyle(color: Colors.grey))
      ],
    );
  }

  Widget _buildBarChart() {
    return Column(
      children: [
        Container(width: 10, height: 80, color: Colors.black),
        SizedBox(height: 5),
        Container(width: 10, height: 50, color: Colors.blueAccent),
        SizedBox(height: 5),
        Container(width: 10, height: 60, color: Colors.grey[300]),
      ],
    );
  }

  Widget _buildActivityTile(IconData icon, String value, String title, Color color) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(title, style: TextStyle(color: Colors.grey))
      ],
    );
  }

  Widget _buildPlanIcon(IconData icon, String title) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.indigoAccent[100],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(title, style: TextStyle(color: Colors.black))
      ],
    );
  }
}
