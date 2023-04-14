import 'package:applogin/constants.dart';
import 'package:flutter/material.dart';

class PageTitleBar extends StatelessWidget {
  final String title;
  const PageTitleBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 260),
      child: Container(
          alignment: Alignment.topCenter,
          width: double.infinity,
          height: size.height / 4,
          decoration: BoxDecoration(
            color: kPrimaryLightColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(36),
              topRight: Radius.circular(36),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 66, 66, 66),
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
    );
  }
}
