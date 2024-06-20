import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/constants/colors.dart';

class Socialwidget extends StatefulWidget {
  const Socialwidget({Key? key}) : super(key: key);

  @override
  _SocialwidgetState createState() => _SocialwidgetState();
}

class _SocialwidgetState extends State<Socialwidget> {
  // Track hover state for each icon
  bool _isLinkedInHovered = false;
  bool _isGitHubHovered = false;
  bool _isFigmaHovered = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildIconButton(
          FontAwesomeIcons.linkedinIn,
          'LinkedIn',
          _isLinkedInHovered,
          () {
            // Add your LinkedIn onPressed action here
            print('LinkedIn icon pressed');
          },
          () {
            setState(() {
              _isLinkedInHovered = !_isLinkedInHovered;
            });
          },
        ),
        SizedBox(width: 10,),
        _buildIconButton(
          FontAwesomeIcons.github,
          'GitHub',
          _isGitHubHovered,
          () {
            // Add your GitHub onPressed action here
            print('GitHub icon pressed');
          },
          () {
            setState(() {
              _isGitHubHovered = !_isGitHubHovered;
            });
          },
        ),
        SizedBox(width: 10,),
        _buildIconButton(
          FontAwesomeIcons.figma,
          'Figma',
          _isFigmaHovered,
          () {
            // Add your Figma onPressed action here
            print('Figma icon pressed');
          },
          () {
            setState(() {
              _isFigmaHovered = !_isFigmaHovered;
            });
          },
        ),
      ],
    );
  }

  Widget _buildIconButton(IconData icon, String tooltip, bool isHovered, VoidCallback onPressed, VoidCallback onHover) {
    return MouseRegion(
      onEnter: (_) {
        onHover();
      },
      onExit: (_) {
        onHover();
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white.withOpacity(0.5)),
          boxShadow: isHovered ? [
            BoxShadow(
              color: colors.paleSlate.withOpacity(0.5),
              blurRadius: 8,
              spreadRadius: 2,
              offset: Offset(0, 4),
            ),
          ] : [],
        ),
        child: Tooltip(
          message: tooltip,
          child: IconButton(
            onPressed: onPressed,
            icon: FaIcon(
              icon,
              color: isHovered ? colors.paleSlate : colors.studio,
              size: 15,
            ),
          ),
        ),
      ),
    );
  }
}

