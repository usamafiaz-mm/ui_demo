import 'package:flutter/material.dart';

class AddBanner extends StatelessWidget {
  final String percent, title, detail, imagePath;

  AddBanner({
    Key? key,
    required this.percent,
    required this.title,
    required this.detail,
    required this.imagePath,
  }) : super(key: key);
  final oneSideShadow = Padding(
    padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.red.withOpacity(0.95),
            blurRadius: 26,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.red.withOpacity(0.5),
            blurRadius: 15,
            // blurStyle: BlurStyle.outer,

            offset: Offset(0, 15), // changes position of shadow
          ),
        ],
        color: Colors.red,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    percent,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    detail,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )
                ],
              ),
            ),
            Flexible(
              child: SizedBox(height: 200, child: Image.asset(imagePath)),
            )
          ],
        ),
      ),
    );
  }
}
