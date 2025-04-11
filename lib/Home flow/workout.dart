import 'package:flutter/material.dart';
import '../constants/appcolors.dart';
import 'workout 1.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title:  Text(
                    "Work Out",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: height * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
             
              const Text(
                "Popular Workouts",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height * 0.015),
              SizedBox(
                height: height * 0.2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  LowerBodyWorkoutScreen()));
                    },
                    child: _buildWorkoutCard("Lower Body", "500 Kcal", "30 Min", 'assets/lower_body.png', width),
                  ),
                    SizedBox(width: width * 0.03),
                  
                    SizedBox(width: width * 0.03),
                    _buildWorkoutCard("Hand Training", "600 Kcal", "40 Min", 'assets/hand_training.png', width),
                  ],
                ),
              ),
              SizedBox(height: height * 0.025),
              const Text(
                "Today Plan",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height * 0.02),
              _buildTodayPlan("Push Up", "100 Push up a day", "Intermediate", 0.45, 'assets/pushup.png', width),
              _buildTodayPlan("Sit Up", "20 Sit up a day", "Beginner", 0.75, 'assets/situp.png', width),
              _buildTodayPlan("Knee Push Up", "20 Sit up a day", "Beginner", 0.45, 'assets/knee_pushup.png', width),
              SizedBox(height: height * 0.025),
              const Text(
                "Fast Warmup",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height * 0.015),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildWarmupCard("Leg exercises", "10 min", "Beginner", 'assets/leg.png', width),
                    SizedBox(width: width * 0.03),
                    _buildWarmupCard("Backward lunge", "5 min", "Beginner", 'assets/lunge.png', width),
                    SizedBox(width: width * 0.03),
                    _buildWarmupCard("Arm Stretch", "8 min", "Intermediate", 'assets/arm_stretch.png', width),
                  ],
                ),
              ),
              SizedBox(height: height * 0.025),
              const Text(
                "Challenge",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height * 0.015),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildChallengeCard("Plank", Colors.indigo, Icons.local_fire_department, width * 0.28),
                    SizedBox(width: width * 0.03),
                    _buildChallengeCard("Sprint", Colors.greenAccent, Icons.directions_run, width * 0.28),
                    SizedBox(width: width * 0.03),
                    _buildChallengeCard("Squat", Colors.orange, Icons.fitness_center, width * 0.28),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWorkoutCard(String title, String kcal, String time, String imgPath, double width) {
    return Container(
      width: width * 0.6,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(imgPath),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const Spacer(),
          Row(
            children: [
              const Icon(Icons.local_fire_department, color: Colors.white, size: 16),
              const SizedBox(width: 4),
              Text(kcal, style: const TextStyle(color: Colors.white)),
              const SizedBox(width: 8),
              const Icon(Icons.access_time, color: Colors.white, size: 16),
              const SizedBox(width: 4),
              Text(time, style: const TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTodayPlan(String title, String subtitle, String level, double progress, String imgPath, double width) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(imgPath, width: width * 0.22, height: width * 0.22, fit: BoxFit.cover),
          ),
          SizedBox(width: width * 0.03),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                Text(subtitle, style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  value: progress,
                  backgroundColor: Colors.white24,
                  color: const Color(0xFF726EFF),
                ),
              ],
            ),
          ),
          SizedBox(width: width * 0.02),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              level,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWarmupCard(String title, String duration, String level, String imgPath, double width) {
    return Container(
      width: width * 0.42,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          Image.asset(imgPath, width: 40, height: 40, fit: BoxFit.cover),
          const SizedBox(width: 8),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(duration, style: const TextStyle(fontSize: 12)),
                Text(level, style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChallengeCard(String label, Color color, IconData icon, double cardWidth) {
    return Container(
      width: cardWidth,
      height: cardWidth,
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: color,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}