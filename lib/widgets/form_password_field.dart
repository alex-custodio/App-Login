import 'package:flutter/material.dart';
import 'package:applogin/constants.dart';

class FormPasswordField extends StatefulWidget {
  Size size;

  FormPasswordField({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  State<FormPasswordField> createState() => _FormPasswordFieldState();
}

class _FormPasswordFieldState extends State<FormPasswordField> {
  bool invisible = true;
  IconData icon = Icons.visibility;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(10),
      ),
      width: widget.size.width / 1.2,
      child: TextField(
        obscureText: invisible,
        decoration: InputDecoration(
          labelText: "Senha",
          labelStyle: TextStyle(color: kPrimaryColor.withOpacity(0.78)),
          prefixIcon: Icon(
            Icons.password_rounded,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: Icon(icon!),
            color: kPrimaryColor,
            onPressed: () {
              setState(() {
                invisible = !invisible;
                icon = invisible ? Icons.visibility : Icons.visibility_off;
              });
            },
          ),
        ),
      ),
    );
  }
}
