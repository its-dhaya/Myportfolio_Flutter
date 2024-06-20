import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/constants/styles.dart';
import 'package:myportfolio/screens/widgets/Service.dart';
import 'package:myportfolio/screens/widgets/header.dart';
import 'package:myportfolio/screens/widgets/rotatingimage.dart';

class Desktoplayout extends StatefulWidget {
  const Desktoplayout({super.key});

  @override
  State<Desktoplayout> createState() => _DesktoplayoutState();
}

class _DesktoplayoutState extends State<Desktoplayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
     body: Container(
     height: double.infinity,
     width: double.infinity,
     decoration:Styles.gradientDecoration ,

     child: SingleChildScrollView(
      child: Column(
        children: [

          Container(
            margin: EdgeInsets.symmetric(vertical: size.height*0.18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
            
              Column(
                children: [
                  Row(
                    children: [
                      HeaderText(size: size)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Social_larger(size: size)
                ],
              ),
              Expanded(child: 
              Container(
                height: size.height*0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Rotatingimage()
                  ],
                ),
              ))
            ],),
          ),
          SizedBox(height: 10,),
          Container(
            color:colors.ebony,
            padding: EdgeInsets.symmetric(vertical: size.width*0.05),
            child: Column(
              children: [
                GradientTextWidget(size: size,text1: 'My Project Works',),
                SizedBox(height: 5,),
                Text('Projects shows the enrollment and effectiveness that made during the implementation of it. The providence of the product will be sure and Quality of service ',
                style: TextStyle(
                  fontSize: size.width*0.012,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontFamily: 'Poppins'
                ),),
                SizedBox(height: size.width*0.02,),
                ServicesWidget(size: size)
              ],
            ),
          )
        ],
      ),
     ),
      ),
    );
  }
}