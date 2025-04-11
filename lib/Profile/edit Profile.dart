import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../widgets/app_button.dart';
import '../widgets/app_field.dart';
import '../widgets/app_text 2.dart';

class edit extends StatefulWidget {
  const edit({super.key});

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {
  File? _image; // This will hold the selected image
  final ImagePicker _picker = ImagePicker(); // ImagePicker instance

  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: AppText(
          text: "Edit Profile",
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 50),

            // Profile Image with Click to Change
            Center(
              child: GestureDetector(
                onTap: _pickImage, // Trigger image picker on tap
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.transparent, // Removed grey shadow
                  backgroundImage: _image != null
                      ? FileImage(_image!) // Display the selected image
                      : AssetImage("assets/m3.png") as ImageProvider, // Default image
                  child: _image == null
                      ? Icon(
                          Icons.camera_alt,
                          size: 40,
                          color: Colors.white.withOpacity(0.7),
                        )
                      : null,
                ),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height / 30),

            // Input Fields
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AppField(hintText: "Full Name"),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AppField(hintText: "Email"),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AppField(hintText: "Phone Number"),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AppField(hintText: "Password"),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AppField(hintText: "Confirm Password"),
            ),

            SizedBox(height: MediaQuery.of(context).size.height / 30),

            // Update Button
            Center(
              child: AppButton(
                btnText: "Update",
                ontap: () {
                  Navigator.pop(context);
                },
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height / 30),
          ],
        ),
      ),
    );
  }
}
