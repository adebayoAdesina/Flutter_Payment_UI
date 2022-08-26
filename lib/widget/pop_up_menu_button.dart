import 'package:flutter/material.dart';
import 'package:payment_app/constants/color.dart';

class PopUpMenuButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final IconData icon;
  final Color iconColor;
  final Color bgColor;
  final Color textColor;
  final Function onTap;
  const PopUpMenuButton({
    Key? key,
    this.text = '',
    this.fontSize = 20,
    required this.icon,
    this.iconColor = kWhiteColor,
    this.bgColor = kMainColor,
    required this.onTap,
    this.textColor = kWhiteColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: bgColor,
            ),
            child: Icon(
              icon,
              size: 30,
              color: iconColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 11.5,
            ),
          )
        ],
      ),
    );
  }
}
