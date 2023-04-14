import 'package:applogin/constants.dart';
import 'package:flutter/material.dart';

class Upside extends StatelessWidget {
  final String img;
  const Upside({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Container(
        width: size.width,
        color: kPrimaryColor,
        height: size.height / 2,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Image.asset(img, alignment: Alignment.topCenter, scale: 8,)
        ),
      ),
    );
  }
}
