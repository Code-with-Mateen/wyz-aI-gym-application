import 'package:flutter/material.dart';


class MyPlanPage extends StatelessWidget {
  const MyPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
              
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
                  ),
                  SizedBox(width: 25),
                  Text(
                    "My Plan",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                "Today's Information",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
              ),
              Text("July, 2021", style: TextStyle(color: Colors.grey)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: _infoCard(
                      title: "Calories",
                      value: "620.68",
                      unit: "Kcal",
                      icon: Icons.local_fire_department,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: _heartChartCard(),
                  ),
                ],
              ),
              SizedBox(height: 15),
              _infoCard(
                title: "Steps",
                value: "1 240",
                unit: "Steps",
                icon: Icons.directions_walk,
                fullWidth: true,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _activityTile(Icons.fitness_center, "628 Kcal", "Dumbbell", Colors.indigo),
                  _activityTile(Icons.directions_run, "235 Kcal", "Treadmill", Colors.black),
                  _activityTile(Icons.directions_walk, "432 Kcal", "Rope", Colors.black),
                ],
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      blurRadius: 10, // Increase blur for a more prominent shadow
                      offset: Offset(0, 5), // Shadow position
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.greenAccent,
                      child: Icon(Icons.emoji_events, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Invite your friends", style: TextStyle(color: Colors.grey)),
                          SizedBox(height: 5),
                          Text(
                            "Invite your friends to get a free exercise right away",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoCard({
    required String title,
    required String value,
    required String unit,
    required IconData icon,
    bool fullWidth = false,
  }) {
    return Container(
      width: fullWidth ? double.infinity : null,
      margin: EdgeInsets.only(right: fullWidth ? 0 : 10, top: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color
            blurRadius: 10, // Increase blur for a more prominent shadow
            offset: Offset(0, 5), // Shadow position
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and Icon in the same row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14, // Reduced font size
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Black color for the title
                ),
              ),
              Icon(
                icon,
                color: Colors.indigo,
                size: 24, // Reduced icon size
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            value,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            unit,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _heartChartCard() {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color
            blurRadius: 10, // Increase blur for a more prominent shadow
            offset: Offset(0, 5), // Shadow position
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and Icon in the same row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Heart",
                style: TextStyle(
                  fontSize: 14, // Reduced font size
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Black color for the title
                ),
              ),
              Icon(
                Icons.favorite,
                color: Colors.indigo,
                size: 24, // Reduced icon size
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.green[50],
              borderRadius: BorderRadius.circular(12),
            ),
            child: CustomPaint(
              painter: HeartChartPainter(),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "74",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "bpm",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _activityTile(IconData icon, String value, String title, Color color) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // Shadow color
                blurRadius: 10, // Increase blur for a more prominent shadow
                offset: Offset(0, 5), // Shadow position
              ),
            ],
          ),
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(title, style: TextStyle(color: Colors.grey))
      ],
    );
  }
}

class HeartChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.indigo
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(0, size.height * 0.6);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.4, size.width * 0.3, size.height * 0.6);
    path.quadraticBezierTo(size.width * 0.4, size.height * 0.8, size.width * 0.5, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.6, size.height * 0.3, size.width * 0.7, size.height * 0.6);
    path.quadraticBezierTo(size.width * 0.8, size.height * 0.9, size.width, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
