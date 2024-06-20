import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/screens/widgets/cv.dart';
import 'package:myportfolio/screens/widgets/socialwidget.dart';
import 'package:myportfolio/screens/widgets/textwidget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HeaderText extends StatelessWidget {
  final Size size;
  const HeaderText({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.07,
      ),
      child: Column(
        crossAxisAlignment: size.width > 600
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              child: TextWidget(
            sSize: size,
            text: "I am Dhayanithi",
            color: Colors.white,
            size: 26,
            fw: FontWeight.bold,
            alignment: TextAlign.center,
          )),
          GradientTextWidget(
            size: size,
            alignment: TextAlign.center,
            text1: "Cross-Platform",
            text2: "Application Developer",
          ),
          SizedBox(height: 5,),
          Text('(Android, ios, Website development in Flutter)',style: TextStyle(color:colors.paleSlate,fontFamily: 'Poppins'),),
          
          SizedBox(
            width: size.width * 0.5,
            child: TextWidget(
                sSize: size,
                alignment: TextAlign.center,
                text:
                    "Transforming ideas into functional applications and websites that exceed expectations. Specializing in user-centric design and seamless functionality.From concept to deployment, I deliver solutions that drive your success in the digital world.",
                size: 16,
                color: Colors.white,
                fw: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}

class GradientTextWidget extends StatelessWidget {
  final TextAlign? alignment;
  final String? text1;
  final String? text2;
  final Color? color1;
  final Color? color2;
  final double? fsize;
  final FontWeight? fw;
  const GradientTextWidget(
      {super.key,
      required this.size,
      this.alignment,
      this.fw,
      this.color1,
      this.text1,
      this.text2,
      this.color2,
      this.fsize});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GradientText(
      textAlign: size.width < 600 && alignment != null ? alignment : null,
      "${text1}\n${text2??""}",
      colors: [
        colors.studio,
        colors.paleSlate,
      ],
      style: TextStyle(
          fontSize: size.width * 0.040,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold),
    );
  }
}

class Social_larger extends StatelessWidget {
  const Social_larger({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.5,
      child: Row(
        children: [
          DownloadCV(),
          SizedBox(
            width: 20,
          ),
          Socialwidget()
        ],
      ),
    );
  }
}