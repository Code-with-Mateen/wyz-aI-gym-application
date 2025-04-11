import 'package:flutter/material.dart';
import 'package:wyz/widgets/app_button.dart' show AppButton;

// Replace this with the actual import for the Forth class
import '../constants/appcolors.dart' show AppColors;
import '../widgets/app_text 2.dart';
import '4.dart';

class DateOfBirthPickerModal extends StatefulWidget {
  const DateOfBirthPickerModal({super.key});

  @override
  _DateOfBirthPickerModalState createState() => _DateOfBirthPickerModalState();
}

class _DateOfBirthPickerModalState extends State<DateOfBirthPickerModal> {
  int selectedDay = 1;
  int selectedMonth = 1;
  int selectedYear = 2000; // Default year set to 2000

  final List<String> months = [
    "Jan", "Feb", "Mar", "Apr", "May", "Jun",
    "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
  ];

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
          AppText(
            text: "6 of 12", // Update the step number if needed
            color: AppColors.primaryColor,
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
                text: "Select your date of birth",
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
                      maxValue: 31,
                      value: selectedDay,
                      onChanged: (value) => setState(() => selectedDay = value),
                    ),
                  ),
                  Flexible(
                    child: NumberPicker(
                      minValue: 1,
                      maxValue: 12,
                      value: selectedMonth,
                      onChanged: (value) =>
                          setState(() => selectedMonth = value),
                      itemBuilder: (context, index) {
                        return Center(
                          child: Text(
                            months[index - 1], // Display month names
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Flexible(
                    child: NumberPicker(
                      minValue: 1980,
                      maxValue: DateTime.now().year,
                      value: selectedYear,
                      onChanged: (value) =>
                          setState(() => selectedYear = value),
                    ),
                  ),
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
                    MaterialPageRoute(builder: (context) => Forth()),
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
  final Widget Function(BuildContext, int)? itemBuilder; // Optional custom builder

  const NumberPicker({super.key, 
    required this.minValue,
    required this.maxValue,
    required this.value,
    required this.onChanged,
    this.itemBuilder,
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
            if (itemBuilder != null) {
              return itemBuilder!(context, minValue + index);
            }
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
