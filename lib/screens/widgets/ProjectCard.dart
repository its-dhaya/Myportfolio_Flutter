import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors.dart';
import 'package:myportfolio/screens/widgets/textwidget.dart';

class Projectcard extends StatefulWidget {
  const Projectcard({super.key});

  @override
  State<Projectcard> createState() => _ProjectcardState();
}

class _ProjectcardState extends State<Projectcard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_) => _onHovered(true),
      onExit: (_) => _onHovered(false),
      child: Container(
        height: size.width * 0.08,
        width: size.width * 0.08,
        decoration: BoxDecoration(
          color: colors.valhalla.withOpacity(0.8),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              // Adjust the size and fit of the image here
              Image.asset(
                'assets/images/chattify.jpeg',
                fit: BoxFit.cover, // Choose the fit that suits your needs
                width: double.infinity, // Use double.infinity to fill parent width
                height: double.infinity, // Use double.infinity to fill parent height
              ),
              Align(
                alignment: Alignment.center,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300), // Corrected microseconds to milliseconds
                  curve: Curves.bounceIn,
                  height: _isHovered ? size.width : 0,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: colors.studio,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Center(
                              child: TextWidget(
                                sSize: size,
                                text: "Chat App",
                                size: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onHovered(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
