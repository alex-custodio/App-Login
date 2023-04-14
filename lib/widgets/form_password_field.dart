import 'package:flutter/material.dart';
import 'package:applogin/constants.dart';

class FormPasswordField extends StatelessWidget {
  Size size;
  FormPasswordField({
    Key? key,
    required this.size,
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
          labelText: "Senha",
          labelStyle: TextStyle(color: kPrimaryColor.withOpacity(0.78)),
          prefixIcon: Icon(
            Icons.password_rounded,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: Icon(Icons.visibility),
            color: kPrimaryColor,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
