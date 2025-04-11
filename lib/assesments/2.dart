
import 'package:flutter/material.dart';
import 'package:wyz/widgets/app_button.dart' show AppButton;
import '../constants/appcolors.dart';
import '../widgets/app_text 2.dart';
import '3.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  int selectedIndex = -1; // Track selected option

  final List<String> options = [
    "0-2 per week",
    "3-5 per week ",
    "6+ per week",
  ]; // 4 options

  void selectOption(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.black),
        ),
        centerTitle: true,
      
        actions: [
          AppText(text: "2 of 12", color: AppColors.primaryColor,
              fontWeight: FontWeight.w600,
          
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Center(
              child: AppText(
                text: "How many workouts do you do per week?",
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                textAlign: TextAlign.center,
              ),
            ),
        
           const SizedBox(height: 60),
            Column(
              children: List.generate(options.length, (index) {
                return Column(
                  children: [
                    OptionTile(
                      text: options[index],
                      isSelected: selectedIndex == index,
                      onTap: () => selectOption(index),
                    ),
                    const SizedBox(height: 20), // Space between each container
                  ],
                );
              }),
            ),
              SizedBox(
              height: 50,
            ),
            Center(
              child: AppButton(
                btnText: "Next",
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Third())));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class OptionTile extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionTile({required this.text, required this.isSelected, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? AppColors.seccolor : Colors.grey[50],
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 3,
              color: Colors.white,
            ),
          ],
        ),
        child: Center(
          child: AppText(
            text: 
            text,
            fontSize: 18, fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}