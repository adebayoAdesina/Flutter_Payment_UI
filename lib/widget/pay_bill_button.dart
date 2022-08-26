import 'package:flutter/material.dart';
import 'package:payment_app/constants/color.dart';

class PayBillButton extends StatelessWidget {
  final Color bgColor;
  final String text;
  final Color textColor;
  final Function onTap;
  final bool isBorder;
  const PayBillButton(
      {Key? key,
      this.bgColor = kMainColor,
      required this.text,
      required this.textColor,
      required this.onTap,
      this.isBorder = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onTap(),
      child: Container(
        height: 60,
        margin: const EdgeInsets.symmetric(horizontal: 30),
        width: MediaQuery.of(context).size.width - 60,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: kMainColor,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            color: textColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
