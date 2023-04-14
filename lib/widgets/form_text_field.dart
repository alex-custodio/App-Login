import 'package:flutter/material.dart';
import 'package:applogin/constants.dart';

class FormTextField extends StatelessWidget {
  IconData icon;
  String labelText;
  Size size;
  FormTextField({
    Key? key,
    required this.size,
    required this.icon,
    required this.labelText,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(10),
      ),
      width: size.width / 1.2,
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: kPrimaryColor.withOpacity(0.78)),
          prefixIcon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
