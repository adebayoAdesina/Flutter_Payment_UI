import 'package:flutter/material.dart';

import '../constants/color.dart';

class PaymentListView extends StatelessWidget {
  const PaymentListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
      child: const ListTile(
        style: ListTileStyle.drawer,
        shape: Border(),
        leading: CircleAvatar(
          backgroundColor: Colors.green,
          child: Icon(
            Icons.done,
            size: 30,
            color: kWhiteColor,
          ),
        ),
        title: Text('KenGen Power'),
        subtitle: Text('ID: 468363747'),
        trailing: Text(
          '\$1248.00',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 13.5,
            letterSpacing: 1.3,
          ),
        ),
      ),
    );
  }
}
