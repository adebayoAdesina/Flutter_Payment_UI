import 'package:flutter/material.dart';
import 'package:payment_app/constants/color.dart';
import 'package:payment_app/widget/head_section.dart';
import 'package:payment_app/widget/pay_bill_button.dart';

import '../widget/list_of_bills.dart';

class HomeScreen extends StatelessWidget {
  static const id = '/';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            const HeadSection(),
            Positioned(
              top: 320,
              right: 0,
              bottom: 0,
              left: 0,
              child: Column(
                children: [
                  MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    removeRight: true,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) => const ListOfBills(),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              child: PayBillButton(
                onTap: () {},
                text: 'Pay all bills',
                textColor: kWhiteColor,
                bgColor: kMainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
