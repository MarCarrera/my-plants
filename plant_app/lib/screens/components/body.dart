// ignore_for_file: deprecated_member_use

import "package:flutter/material.dart";
import '../../constans.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const ImageAndIcons(),
          const TitleAndPrice(
            title: 'Angelica',
            country: 'Russian',
            price: 110,
          ),
          const SizedBox(height: kDefaultPadding),
          Row(children: <Widget>[
            SizedBox(
                height: 84,
                width: size.width / 2,
                child: FloatingActionButton(
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(28))),
                  backgroundColor: kPrimaryColor,
                  onPressed: () {},
                  child: const Text('Buy Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                )),
            SizedBox(
                height: 84,
                width: size.width / 2,
                child: FloatingActionButton(
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(28))),
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: const Text('Description',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                )),
          ]),
          //const SizedBox(height: kDefaultPadding * 2)
        ],
      ),
    );
  }
}
