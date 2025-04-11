import 'package:flutter/material.dart';
import 'package:wyz/assesments/sp3.dart';
import 'package:wyz/constants/appcolors.dart' show AppColors;
import 'package:wyz/widgets/app_button.dart' show AppButton;
import '../widgets/app_text 2.dart';

class Eight extends StatefulWidget {
  const Eight({super.key});

  @override
  State<Eight> createState() => _EightState();
}

class _EightState extends State<Eight> {
  int selectedIndex = -1; // Track selected option

  final List<String> options = [
    "Yes",
    "No",
  ]; // Options

  void selectOption(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          AppText(
            text: "12 of 12",
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: AppText(
                text: "Are you taking any supplements?",
                fontSize: width * 0.055, // Responsive font size
                fontWeight: FontWeight.w600,
                color: Colors.black,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: height * 0.3, // Responsive height for the image
              child: Image.asset("assets/med.png", fit: BoxFit.contain),
            ),
            SizedBox(height: height * 0.03),
            Column(
              children: List.generate(options.length, (index) {
                return Column(
                  children: [
                    OptionTile(
                      text: options[index],
                      isSelected: selectedIndex == index,
                      onTap: () => selectOption(index),
                    ),
                    SizedBox(height: height * 0.02), // Responsive spacing between options
                  ],
                );
              }),
            ),
            SizedBox(height: height * 0.04),
            Center(
              child: AppButton(
                btnText: "Next",
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: ((context) => sp3())),
                  );
                },
              ),
            ),
          ],
        ),
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
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(width * 0.04), // Responsive padding
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
            text: text,
            fontSize: width * 0.045, // Responsive font size
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}