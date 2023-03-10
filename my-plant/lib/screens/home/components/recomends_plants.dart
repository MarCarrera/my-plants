import 'package:flutter/material.dart';
import 'package:tres/screens/details/details_screen.dart';

import '../../../constans.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //navegar horizontalmente
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            title: 'Samantha',
            country: 'Russian',
            price: 110,
            image: 'assets/images/image_1.png',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(),
                  ));
            },
          ),
          RecomendPlantCard(
            title: 'Angelica',
            country: 'Russian',
            price: 145,
            image: 'assets/images/image_2.png',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(),
                  ));
            },
          ),
          RecomendPlantCard(
            title: 'Teresa',
            country: 'Russian',
            price: 100,
            image: 'assets/images/image_3.png',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(),
                  ));
            },
          ),
          RecomendPlantCard(
            title: 'Alejandra',
            country: 'Russian',
            price: 135,
            image: 'assets/images/image_1.png',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(),
                  ));
            },
          ),
          RecomendPlantCard(
            title: 'Macarena',
            country: 'Russian',
            price: 115,
            image: 'assets/images/image_2.png',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    //required this.press,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding * 2.5),
        width: size.width * 0.4,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            //Image.asset("assets/images/image_1.png"),
            GestureDetector(
              onTap: press, //(){},
              child: Container(
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      )
                    ]),
                child: Row(children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: '$title\n'.toUpperCase(),
                      style: Theme.of(context).textTheme.button,
                    ),
                    TextSpan(
                        text: country.toUpperCase(),
                        style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ))
                  ])),
                  const Spacer(),
                  Text(
                    "$price",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ]),
              ),
            )
          ],
        ));
  }
}
