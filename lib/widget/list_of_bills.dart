import 'package:flutter/material.dart';
import 'package:payment_app/constants/color.dart';

class ListOfBills extends StatelessWidget {
  const ListOfBills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      height: 130,
      width: size.width - 20,
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
      decoration: const BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xffd8dbe0),
            offset: Offset(1, 1),
            blurRadius: 20.0,
            spreadRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Electricity Bill',
                        style: TextStyle(
                          fontSize: 16,
                          color: kMainColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('ID 201827638')
                    ],
                  ),
                ],
              ),
              Row(
                children: const [
                  FittedBox(
                    child: Text(
                      'Auto play on 28th Aug 2022',
                      style: TextStyle(
                        fontSize: 16,
                        color: kGreenColor,
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                      overflow: TextOverflow.clip,
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  )
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 3.8, horizontal: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  'Select',
                  style: TextStyle(fontSize: 12.5),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '\$1248.00',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 13.5,
                      letterSpacing: 1.3,
                    ),
                  ),
                  Text('Due in 3days',
                      style: TextStyle(fontSize: 11, letterSpacing: 0.7)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
