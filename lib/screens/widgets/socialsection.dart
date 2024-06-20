import 'package:flutter/material.dart';
import 'package:myportfolio/screens/widgets/cv.dart';
import 'package:myportfolio/screens/widgets/socialwidget.dart';

class Socialsection extends StatelessWidget {
  const Socialsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         DownloadCV(),
          SizedBox(width: 20,),
          Expanded(child: Socialwidget())
        ],
      ),
    );
  }
}