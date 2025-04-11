// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:wyz/assesments/subscription.dart';

import '../Authentication/login.dart';
import '../Home flow/usernev.dart';
import '../constants/appcolors.dart';
import 'Notifications.dart';
import 'edit Profile.dart';

class profile extends StatefulWidget {
  profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  //////////help/////////////////
  void showalertdailouge() {
    showDialog(
        context: context,
        builder: ((context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(14))),
              title: Text(
                "Help ",
                style: GoogleFonts.poppins(
                  // backgroundColor: Color(0xff21242D),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    autofocus: true,
                    style: GoogleFonts.poppins(
                      // backgroundColor: Color(0xff21242D),
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      labelText: "Get Help",
                      labelStyle: GoogleFonts.poppins(
                        // backgroundColor: Color(0xff21242D),
                        color: Colors.black,
                        fontSize: 12,
                      ),
                      focusColor: Colors.black,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => profile())));
                          },
                          color: AppColors.primaryColor,
                          height: 55,
                          minWidth: 90,
                          elevation: 10,
                          highlightElevation: 10,
                          focusElevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Text(
                            "Submit",
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )),
                ],
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86),
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: AppBar(
            leading: IconButton(
                onPressed: () {
                 
                Navigator.push(context, MaterialPageRoute(builder: (context)=> usernev()));
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                )),
            elevation: 0,
            title: Text(
              "Profile",
              style: GoogleFonts.poppins(
                // backgroundColor: Color(0xff21242D),
                color: Colors.black,
                fontSize: 20,
              ),
            ),
           
            centerTitle: true,
           
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Slide())));
                  },
                  icon: Icon(
                    Icons.notifications_active_outlined,
                    color: Colors.black,
                  ))
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
        
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height/30,
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Container(
                      color: Colors.transparent,
                      child: Row(
                        children: [
                         InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> edit()));
                          },
                          child:  Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child:SizedBox(
                                    width: MediaQuery.of(context).size.width/7,
                                    child:  Image(
                                      image: AssetImage("assets/m3.png"),
                                      ),
                                  ),
                                      ),
                            ],
                          ),
                         ),
                          InkWell(

                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> edit()));
                            },
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  "Hi, Mateen!",
                                  style: GoogleFonts.poppins(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Text(
                                  "Welcome to WYZ Fitness! ",
                                  style: GoogleFonts.poppins(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                            ),
                          ),
                        ],
                      ))),
              Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Column(
                      children: [
                        InkWell(
                            onTap: () async {
                              await Share.share(
                                  "Check out App!\nhttps://play.google.com/ \nUse,share & rate it on Google Play store.\nAlso share Real Time MultiMedia and much more.");
                            },
                            child: ListTile(
                              //////listt=Tile//// pora jgh tapk liye use hota hy/////

                              leading: Icon(
                                Icons.share,
                                color: Colors.black,
                              ),
                              title: Text(
                                "Invite People",
                                style: GoogleFonts.poppins(
                                  textStyle:
                                      Theme.of(context).textTheme.displayMedium,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,

                                // textDirection: TextDirection.rtl,
                              ),
                            )),
                        ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => SubscriptionScreen())));
                          },
                          leading: Icon(
                            Icons.subscriptions,
                            color: Colors.black,
                          ),
                          title: Text(
                            "Subscription",
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,

                            // textDirection: TextDirection.rtl,
                          ),
                        ),
                      ],
                    ),
                  )),
              Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(children: [
                      ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => edit())));
                        },
                        leading: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        title: Text(
                          "Edit Details",
                          style: GoogleFonts.poppins(
                            textStyle:
                                Theme.of(context).textTheme.displayMedium,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,

                          // textDirection: TextDirection.rtl,
                        ),
                      ),
                     
                      ListTile(
                        onTap: showalertdailouge,
                        leading: Icon(
                          Icons.headphones,
                          color: Colors.black,
                        ),
                        title: Text(
                          "Get Help",
                          style: GoogleFonts.poppins(
                            textStyle:
                                Theme.of(context).textTheme.displayMedium,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,

                          // textDirection: TextDirection.rtl,
                        ),
                      ),
                 
                      //   ListTile(
                      //   onTap: () {
                      //     // Navigator.push(
                      //     //     context,
                      //     //     MaterialPageRoute(
                      //     //         builder: ((context) => RequestPayment())));
                      //   },
                      //   leading: Icon(
                      //     Icons.request_page_outlined,
                      //     color: Colors.black,
                      //   ),
                      //   title: Text(
                      //     "Payment Cycle",
                      //     style: GoogleFonts.poppins(
                      //       textStyle:
                      //           Theme.of(context).textTheme.displayMedium,
                      //       fontSize: 16,
                      //       color: Colors.black,
                      //     ),
                      //   ),
                      //   trailing: Icon(
                      //     Icons.arrow_forward_ios,
                      //     color: Colors.black,

                      //     // textDirection: TextDirection.rtl,
                      //   ),
                      // ),
                    ]),
                  )),
              Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Slide())));
                          },
                          leading: Icon(
                            Icons.notification_add,
                            color: Colors.black,
                          ),
                          title: Text(
                            "Notifications",
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                          // trailing: Image(
                          //   image: AssetImage("assets/Capture.PNG"),
                          //   height: 25,
                          // )),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => login())));
                          },
                          leading: Icon(
                            Icons.logout,
                            color: Color(0xffF1315B),
                          ),
                          title: Text(
                            "Logout",
                            style: GoogleFonts.poppins(
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffF1315B),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
