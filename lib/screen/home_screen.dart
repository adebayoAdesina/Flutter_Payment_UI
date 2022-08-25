import 'package:flutter/material.dart';
import 'package:payment_app/widget/head_section.dart';

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
          children: const [
            const HeadSection(),
            Positioned(top: 320, child: ListOfBills()),
          ],
        ),
      ),
    );
  }
}
