import 'package:flutter/material.dart';

class SocialLoginIcon extends StatelessWidget {
  String img;
  SocialLoginIcon({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.18),
          ),
        ],
      ),
      child: MaterialButton(
        child: Image.asset(
          img,
          alignment: Alignment.center,
        ),
        onPressed: () {},
      ),
    );
  }
}
