import 'package:flutter/material.dart';
import 'package:myportfolio/constants/styles.dart';
import 'package:myportfolio/screens/widgets/cv.dart';
import 'package:myportfolio/screens/widgets/header.dart';
import 'package:myportfolio/screens/widgets/rotatingimage.dart';
import 'package:myportfolio/screens/widgets/socialwidget.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  Row(
                    children: [
                      HeaderText(size: size),

                    ],
                  ),
                  SizedBox(height: 20,),
                  Social_Tab(size: size)
                ],
              ),
 
            ],),
          )
        ],
      ),
     ),
      ),
    );
  }
}
class Social_Tab extends StatelessWidget {
  const Social_Tab({super.key,required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width*0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        DownloadCV(),
          SizedBox(height: 10,),
          Socialwidget()
        ],
      ),
    );
  }
}