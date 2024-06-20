import 'package:flutter/material.dart';
import 'package:myportfolio/constants/styles.dart';
import 'package:myportfolio/screens/tablet/tablet.dart';
import 'package:myportfolio/screens/widgets/Service.dart';
import 'package:myportfolio/screens/widgets/header.dart';
import 'package:myportfolio/screens/widgets/rotatingimage.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return Scaffold(
     body: Container(
     height: double.infinity,
     width: double.infinity,
     decoration:Styles.gradientDecoration ,

     child: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: size.height*0.18),
        child: Column(
          children: [
                 Container(
                   height: size.height*0.3,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Rotatingimage()
                     ],
                   ),
                 ),
                 SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
            
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      HeaderText(size: size),
            
                    ],
                  ),
                  SizedBox(height: 20,),
                  Social_Tab(size: size)
                ],
              ),
             
            ],
            ),
            ServicesWidget(size: size)
          ],
        ),
      ),
     ),
      ),
    );
  }
}