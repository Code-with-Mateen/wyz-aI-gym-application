import 'package:flutter/material.dart';
import 'package:wyz/assesments/weight.dart';
import 'package:wyz/widgets/app_button.dart' show AppButton;

// Replace this with the actual import for the Forth class
import '../constants/appcolors.dart' show AppColors;
import '../widgets/app_text 2.dart';

class HeightPickerModal extends StatefulWidget {
  const HeightPickerModal({super.key});

  @override
  _HeightPickerModalState createState() => _HeightPickerModalState();
}

class _HeightPickerModalState extends State<HeightPickerModal> {
  int selectedFeet = 5;
  int selectedInches = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.black),
        ),
         actions: [
          AppText(text: "4 of 12", color: AppColors.primaryColor,
              fontWeight: FontWeight.w600,
          
          ),
        ],
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        height: 500,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           
            SizedBox(height: 40),
             Center(
              child: AppText(
                text: "Select your height",
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                textAlign: TextAlign.center,
              ),
            ),
             
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: NumberPicker(
                      minValue: 1,
                      maxValue: 12,
                      value: selectedFeet,
                      onChanged: (value) => setState(() => selectedFeet = value),
                    ),
                  ),
                  Text("ft", style: TextStyle(fontSize: 22)),
                  Flexible(
                    child: NumberPicker(
                      minValue: 0,
                      maxValue: 11,
                      value: selectedInches,
                      onChanged: (value) =>
                          setState(() => selectedInches = value),
                    ),
                  ),
                  Text("in", style: TextStyle(fontSize: 22)),
                ],
              ),
            ),
              SizedBox(height: 60),
            Center(
              child: AppButton(
                btnText: "Next",
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WeightPickerModal()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NumberPicker extends StatelessWidget {
  final int minValue, maxValue, value;
  final ValueChanged<int> onChanged;

  const NumberPicker({super.key, 
    required this.minValue,
    required this.maxValue,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // Set a fixed height for the ListWheelScrollView
      child: ListWheelScrollView.useDelegate(
        itemExtent: 40,
        perspective: 0.005,
        diameterRatio: 1.2,
        onSelectedItemChanged: (index) {
          onChanged(minValue + index); // Adjust index to match the value range
        },
        childDelegate: ListWheelChildBuilderDelegate(
          builder: (context, index) {
            if (index < 0 || index >= (maxValue - minValue + 1)) return null;
            return Center(
              child: Text(
                "${minValue + index}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            );
          },
          childCount: maxValue - minValue + 1,
        ),
      ),
    );
  }
}
