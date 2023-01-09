import 'package:flutter/material.dart';
import 'package:plant_app/constans.dart';
import 'feactured_plants.dart';
import 'header_with_searchbox.dart';
import 'recomends_plants.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          const TitleWithMoreBtn(
            title: "Recomended",
            //press: () {},
          ),
          const RecomendsPlants(),
          const TitleWithMoreBtn(
            title: "Featured Plants",
            //press: () {},
          ),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
