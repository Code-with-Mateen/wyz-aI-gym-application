import 'package:flutter/material.dart';
import 'package:wyz/Home%20flow/sp1.dart';
import 'package:wyz/widgets/app_button.dart';


class LowerBodyWorkoutScreen extends StatelessWidget {
  const LowerBodyWorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title:  Text(
                    "Work Out",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           
              const SizedBox(height: 16),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/lower_body1.png',
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 12,
                      left: 20,
                      right: 20,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Row(
                              children: [
                                Icon(Icons.access_time, color: Colors.white),
                                SizedBox(width: 6),
                                Text("20 min", style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.local_fire_department, color: Colors.white),
                                SizedBox(width: 6),
                                Text("95 kcal", style: TextStyle(color:Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Lower Body Training",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const Text(
                "The lower abdomen and hips are the most difficult areas of the body to reduce when we are on a diet. Even so, in this area, especially the legs as a whole, you can reduce weight even if you don't use tools.",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Rounds", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("1/8", style: TextStyle(fontSize: 14, color: Colors.black)),
                ],
              ),
              const SizedBox(height: 16),
              _buildRoundTile("Jumping Jacks", "00:30", 'assets/jumping_jacks.png'),
              _buildRoundTile("Squats", "", 'assets/squats.png'),
              Stack(
                children: [
                  _buildRoundTile("Backward Lunge", "", 'assets/backward_lunge.png'),
                  Positioned(
                    bottom: 8,
                    right: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: AppButton(btnText: "Let's Workout", ontap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => sp1(),
                          ),
                        );
                      })
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRoundTile(String title, String time, String imgPath) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(imgPath, width: 50, height: 50, fit: BoxFit.cover),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                if (time.isNotEmpty)
                  Text(time, style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ),
          const Icon(Icons.play_circle_fill, color: Color(0xFF9FE2BF), size: 32),
        ],
      ),
    );
  }
}