import 'package:flutter/material.dart';

import '../constants/color.dart';

class IconButtons extends StatelessWidget {
  final String text;
  final IconData icon;
  const IconButtons({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(7.0),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: kIdColor.withOpacity(1),
                offset: const Offset(0, 2),
                blurRadius: 50,
              ),
            ],
          ),
          child: Icon(
            icon,
            color: kMainColor,
            size: 30,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            color: kWhiteColor,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
