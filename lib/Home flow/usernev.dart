// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:wyz/Home%20flow/AiCoach.dart';
import 'package:wyz/Home%20flow/Home.dart';
import 'package:wyz/Home%20flow/targets.dart';
import 'package:wyz/Home%20flow/workout.dart';

import '../constants/appcolors.dart';



class usernev extends StatefulWidget {
  const usernev({super.key});
  @override
  State<usernev> createState() => _usernevState();
}

class _usernevState extends State<usernev> {
  int currentValue = 0;
  List allScreens = [
    Home(),
    WorkoutScreen(),
    GymScreen(),
    AiCoach(),
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allScreens[currentValue],
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fitness_center,
            ),
            label: "Workout",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.adjust,
              ),
              label: "Targets"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.memory,
              ),
              label: "Ai Coach"),
        ],
        onTap: (index) {
          setState(() {
            currentValue = index;
          });
        },
        currentIndex: (currentValue),
      ),
    );
  }
}
