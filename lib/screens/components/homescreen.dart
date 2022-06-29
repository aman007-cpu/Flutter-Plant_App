import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/components/body.dart';
import 'package:plant/screens/components/bottomNav.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppbar(),
      body: Body(),
      bottomNavigationBar: BottomNavbar(),
    );
  }

  AppBar BuildAppbar() {
    return AppBar(
      backgroundColor: kprimarycolor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
