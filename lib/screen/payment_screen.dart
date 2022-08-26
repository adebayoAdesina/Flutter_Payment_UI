import 'package:flutter/material.dart';
import 'package:payment_app/constants/color.dart';
import 'package:payment_app/widget/icon_button.dart';
import 'package:payment_app/widget/pay_bill_button.dart';
import 'package:payment_app/widget/payment_listview.dart';

class PaymentScreen extends StatelessWidget {
  static const id = 'payment';
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kMainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: size.width - 40,
            decoration: const BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
            child: Column(
              children: [
                sizeBox(),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: kMainColor.withOpacity(0.3),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: kIdColor.withOpacity(1),
                        offset: const Offset(0, 2),
                        blurRadius: 50,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.done,
                    size: 60,
                    color: kWhiteColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Success !',
                  style: TextStyle(
                    color: kMainColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Payment is completed for 2 bills',
                  style: TextStyle(
                    color: kIdColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                sizeBox(),
                MediaQuery.removePadding(
                  context: context,
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => const PaymentListView(),
                  ),
                ),
                sizeBox(),
                const Text(
                  'Total Amount',
                  style: TextStyle(
                    color: kIdColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '\$2840.00',
                  style: TextStyle(
                    color: kMainColor,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                sizeBox()
              ],
            ),
          ),
          sizeBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              IconButtons(
                text: 'share',
                icon: Icons.share_rounded,
              ),
              SizedBox(
                width: 100,
              ),
              IconButtons(
                text: 'print',
                icon: Icons.print,
              )
            ],
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: PayBillButton(
        text: 'Done',
        onTap: () {
          Navigator.pop(context);
        },
        textColor: kWhiteColor,
        isBorder: true,
      ),
    );
  }

  SizedBox sizeBox() {
    return const SizedBox(
      height: 30,
    );
  }
}
