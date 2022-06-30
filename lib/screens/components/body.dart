// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:plant/constants.dart';
import 'package:plant/screens/components/FeaturePlant_bot.dart';
import 'package:plant/screens/components/headerwithsearchbox.dart';
import 'package:plant/screens/components/plantsscroller_items.dart';
import 'package:plant/screens/components/title_with_modebtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //It will provide us total height and width of the screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchbar(size: size),
          Titlewithmorebtn(
            title: "Recomended",
            press: () {},
          ),
          RecomendPlants(),
          Titlewithmorebtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
