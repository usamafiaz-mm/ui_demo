import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.grey[150],
          filled: true,
          border: InputBorder.none,
          prefixIcon: Icon(
            FontAwesomeIcons.search,
            color: Colors.grey[400],
          ),
          suffixIcon: Icon(
            Icons.tune,
            color: Colors.grey[400],
          ),
          hintText: 'Search',
        ),
      ),
    );
  }
}
