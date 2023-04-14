import 'package:flutter/material.dart';
import 'package:applogin/constants.dart';

class RoundedLoginButton extends StatelessWidget {
  const RoundedLoginButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width / 1.2,
      height: 50,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        child: Text(
          "LOGIN",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
