import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/constants/colors.dart';

class DownloadCV extends StatelessWidget {
  const DownloadCV({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: colors.studio)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Download CV',style: TextStyle(color: colors.paleSlate),),

          SizedBox.square(dimension: 12,),
          FaIcon(FontAwesomeIcons.download,color: colors.paleSlate,size: 18,)
        ],
      ),
    );
  }
}