import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:simple_icons/simple_icons.dart';

import '../exports.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CustomSearchField(),
            const SizedBox(
              height: 20,
            ),
            const OfferRow(
              leftTitle: "Special Offer",
              rightTitle: "Show All",
            ),
            const SizedBox(
              height: 20,
            ),
            AddBanner(
              percent: "25%",
              title: "Today's Offer",
              detail: "Get discount for every \norder,only valid for today",
              imagePath: "assets/sneaker.png",
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                IconText(
                  icon: SimpleIcons.nike,
                  title: 'Nike',
                ),
                IconText(
                  icon: SimpleIcons.apple,
                  title: 'Apple',
                ),
                IconText(
                  icon: SimpleIcons.puma,
                  title: 'Puma',
                ),
                IconText(
                  icon: SimpleIcons.reebok,
                  title: 'Reebok',
                ),
                IconText(
                  icon: SimpleIcons.reebok,
                  title: 'Reebok',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                IconText(
                  icon: SimpleIcons.google,
                  title: 'Google',
                ),
                IconText(
                  icon: SimpleIcons.reebok,
                  title: 'Reebok',
                ),
                IconText(
                  icon: SimpleIcons.lufthansa,
                  title: 'Lufthansa',
                ),
                IconText(
                  icon: SimpleIcons.airbnb,
                  title: 'Air BnB',
                ),
                IconText(
                  icon: Icons.more_horiz,
                  title: 'More',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 30,
            ),
            const OfferRow(
              leftTitle: "Most Popular",
              rightTitle: "Show All",
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Chip(
                    labelPadding: EdgeInsets.symmetric(horizontal: 10),
                    label: Text(
                      "All",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        side: BorderSide(color: Colors.black, width: 2)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Chip(
                    labelPadding: EdgeInsets.symmetric(horizontal: 8),
                    label: Text(
                      "Addidas",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        side: BorderSide(color: Colors.black, width: 2)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Chip(
                    labelPadding: EdgeInsets.symmetric(horizontal: 8),
                    label: Text(
                      "Puma",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        side: BorderSide(color: Colors.black, width: 2)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Chip(
                    labelPadding: EdgeInsets.symmetric(horizontal: 10),
                    label: Text(
                      "Servis",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        side: BorderSide(color: Colors.black, width: 2)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Chip(
                    labelPadding: EdgeInsets.symmetric(horizontal: 8),
                    label: Text(
                      "Bata",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        side: BorderSide(color: Colors.black, width: 2)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Chip(
                    labelPadding: EdgeInsets.symmetric(horizontal: 10),
                    label: Text(
                      "Jordans",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        side: BorderSide(color: Colors.black, width: 2)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Chip(
                    labelPadding: EdgeInsets.symmetric(horizontal: 10),
                    label: Text(
                      "Ascio",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        side: BorderSide(color: Colors.black, width: 2)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Chip(
                    labelPadding: EdgeInsets.symmetric(horizontal: 10),
                    label: Text(
                      "Nike",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        side: BorderSide(color: Colors.black, width: 2)),
                  ),
                ],
              ),
            ),
            StaggeredGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                ShoeItemWidget(),
                ShoeItemWidget(),
                ShoeItemWidget(),
                ShoeItemWidget(),
                ShoeItemWidget(),
                ShoeItemWidget(),
                ShoeItemWidget(),
                ShoeItemWidget(),
                ShoeItemWidget(),
                ShoeItemWidget(),
                ShoeItemWidget(),
                ShoeItemWidget(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey[300],
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel_sharp),
            label: 'Orders',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Wallet',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
