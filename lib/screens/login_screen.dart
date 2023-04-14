import 'package:flutter/material.dart';
import 'package:applogin/components/components.dart';
import '../constants.dart';
import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                const Upside(img: "assets/images/login.png"),
                const PageTitleBar(title: "Seja bem vindo!"),
                Padding(
                  padding: const EdgeInsets.only(top: 330),
                  child: Container(
                    width: double.infinity,
                    height: size.height / 2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(38),
                        topRight: Radius.circular(38),
                      ),
                    ),
                    child: Container(
                      width: size.width / 1.2,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                socialIcon(img: "assets/images/facebook.png"),
                                SizedBox(width: 10),
                                socialIcon(img: "assets/images/google.png")
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text("Ou use sua conta de e-mail"),
                          SizedBox(height: 10),
                          // Como que eu mudo o tamanho do TextField?
                          FormTextField(
                              icon: Icons.email,
                              labelText: "E-mail",
                              size: size),
                          SizedBox(height: 10),
                          FormPasswordField(size: size),
                          SizedBox(height: 8),
                          Container(
                              width: size.width / 1.2,
                              child: SwitchListTile(
                                
                                title: Text("Lembrar de mim", style: TextStyle(color: Colors.black.withOpacity(0.80)),),
                                value: true,
                                onChanged: null,
                              )),
                          SizedBox(height: 8),
                          Container(
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
                          ),
                          SizedBox(height: 10),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Não tem uma conta?"),
                              TextButton(
                                child: Text(
                                  "Cadastre-se",
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget socialIcon({img}) {
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
