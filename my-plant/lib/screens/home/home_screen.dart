import 'package:flutter/material.dart';
import 'package:tres/components/my_bottom_nav_bar.dart';

import '../../constans.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          //icon: SvgPicture.asset("assets/icons/menu.svg"),
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ));
  }
}
