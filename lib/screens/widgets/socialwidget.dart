import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';


class Socialwidget extends StatelessWidget {
  const Socialwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

      Container(

        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(color: colors.studio.withOpacity(0.5))
        ),
        child: Center(
          child: IconButton(
            hoverColor: colors.paleSlate,
            onPressed: (){
              launchUrl(Uri.parse('https://www.linkedin.com/in/dhayanithisr/'));
            },
            icon: FaIcon(
              FontAwesomeIcons.linkedinIn,
              color: colors.studio,
              size: 15,
            ),
          ),
        ),
      ),

        const SizedBox(width: 10,),
        Container(

          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: colors.studio.withOpacity(0.5))
          ),
          child: Center(
            child: IconButton(
              hoverColor: colors.paleSlate,
              onPressed: (){
                launchUrl(Uri.parse('https://github.com/its-dhaya?tab=repositories'));
              },
              icon: FaIcon(
                FontAwesomeIcons.github,
                color: colors.studio,
                size: 15,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10,),
        Container(

          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: colors.studio.withOpacity(0.5))
          ),
          child: Center(
            child: IconButton(
              hoverColor: colors.paleSlate,
              onPressed: (){
                launchUrl(Uri.parse('https://www.figma.com/files/team/1337789596594089491/project/210589236/Mine?fuid=1337789593886478175'));
              },
              icon: FaIcon(
                FontAwesomeIcons.figma,
                color: colors.studio,
                size: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}