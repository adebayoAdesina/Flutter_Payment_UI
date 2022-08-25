import 'package:flutter/material.dart';
import 'package:payment_app/constants/color.dart';

class HeadSection extends StatelessWidget {
  const HeadSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: kMainColor.withOpacity(0.3),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: kMainColor.withOpacity(0.7),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.elliptical(200, 70),
                )),
          ),
          Container(
            height: 310,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 85),
            decoration: const BoxDecoration(
              color: kMainColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.elliptical(300, 100),
              ),
            ),
            child: const Text(
              'Flutter \nPayment App',
              style: TextStyle(
                  color: kWhiteColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 35),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: kIdColor.withOpacity(1),
                          offset: const Offset(0, 2),
                          blurRadius: 50)
                    ]),
                child: const Icon(
                  Icons.menu,
                  color: kMainColor,
                ),
              ))
        ],
      ),
    );
  }
}
