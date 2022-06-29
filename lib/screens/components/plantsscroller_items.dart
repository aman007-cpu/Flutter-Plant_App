import 'package:flutter/material.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/details/details_screen.dart';

class RecomendPlants extends StatelessWidget {
  const RecomendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Recomendplantcard(
            image: "assets/images/image_1.png",
            title: "samantha",
            country: "Russia",
            price: 440,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
          ),
          Recomendplantcard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "England",
            price: 440,
            press: () {},
          ),
          Recomendplantcard(
            image: "assets/images/image_3.png",
            title: "Rosamend",
            country: "Otawa",
            price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class Recomendplantcard extends StatelessWidget {
  const Recomendplantcard({
    Key? key,
    required this.country,
    required this.price,
    required this.press,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image, title, country;
  final int price;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kprimarycolor.withOpacity(0.23)),
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "$title\n".toUpperCase(),
                      style: Theme.of(context).textTheme.button,
                    ),
                    TextSpan(
                      text: "$country".toUpperCase(),
                      style: TextStyle(
                        color: kprimarycolor.withOpacity(0.5),
                      ),
                    ),
                  ])),
                  Spacer(),
                  Text(
                    '\4$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kprimarycolor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
