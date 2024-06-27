import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/constants/styles.dart';
import 'package:myportfolio/screens/widgets/Custortabbar.dart';
import 'package:myportfolio/screens/widgets/Service.dart';
import 'package:myportfolio/screens/widgets/header.dart';
import 'package:myportfolio/screens/widgets/rotatingimage.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Desktoplayout extends StatefulWidget {
  const Desktoplayout({super.key});

  @override
  State<Desktoplayout> createState() => _DesktoplayoutState();
}

class _DesktoplayoutState extends State<Desktoplayout> with SingleTickerProviderStateMixin {
  late TabController _tabController;


  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
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
                GradientText( 'My Project Works',colors:[colors.studio,colors.paleSlate
                ],
                style: TextStyle(
                  fontSize: size.width*0.035,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'
                ),
                ),
                SizedBox(height: size.height*0.06,),
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
          ),
          Container(
            width: size.width,
            padding: EdgeInsets.symmetric(vertical: size.width*0.05),
            child: Column(children: [
              GradientTextWidget(size: size,
              text1: "My Recent Playes",),
              SizedBox(height: size.height*0.06,),
              CustomTabBar(
                tabController:_tabController ,
              )
              
            ],
            ),
          ),
          Container(
            height: size.height,
            child: ProjectTabBarView(tabController: _tabController ,),
          )
        ],
      ),
     ),
      ),
    );
  }
}