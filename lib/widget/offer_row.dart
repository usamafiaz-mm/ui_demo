import 'package:flutter/material.dart';

class OfferRow extends StatelessWidget {
  final leftTitle, rightTitle;
  const OfferRow({
    Key? key,
    this.leftTitle,
    this.rightTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          leftTitle,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        Text(
          rightTitle,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
        ),
      ],
    );
  }
}
