import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShoeItemWidget extends StatelessWidget {
  const ShoeItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisSize: MainAxisSize.min,
      children: [
        AspectRatio(
          aspectRatio: 1.1,
          child: Card(
            margin: EdgeInsets.zero,
            color: Colors.grey.shade200,
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset("assets/football.png"),
                ),
                const Positioned(
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black,
                    child: Icon(
                      FontAwesomeIcons.heart,
                      color: Colors.white,
                    ),
                  ),
                  right: 10,
                  top: 10,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Fila Winshift F15",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        IntrinsicHeight(
          child: Row(
            children: [
              const Icon(Icons.star),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "4.5",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 6,
              ),
              const VerticalDivider(
                indent: 7,
                endIndent: 7,
                thickness: 1,
                width: 1,
                color: Colors.grey,
              ),
              SizedBox(
                width: 6,
              ),
              Card(
                color: Colors.grey.shade200,
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    "4,523 sold",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Text(
          "\$70.00",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
