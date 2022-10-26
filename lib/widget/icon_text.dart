import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String title;

  const IconText({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          radius: 25,
          child: Icon(
            icon,
            color: Colors.black,
            size: 25,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
