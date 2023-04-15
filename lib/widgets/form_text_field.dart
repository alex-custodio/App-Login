import 'package:flutter/material.dart';
import 'package:applogin/constants.dart';

class FormTextField extends StatelessWidget {
  IconData icon;
  String labelText;
  TextInputType? keyboardType;
  Size size;
  FormTextField({
    Key? key,
    required this.size,
    required this.icon,
    required this.labelText,
    required this.keyboardType
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
        keyboardType: keyboardType,
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
