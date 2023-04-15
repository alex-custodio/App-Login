import 'package:flutter/material.dart';
import 'package:applogin/components/components.dart';
import '../constants.dart';
import '../widgets/widgets.dart';
import 'screens.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool value = false;
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
                const Upside(img: "assets/images/landing-page-mono.png"),
                const PageTitleBar(title: "Cadastre-se!"),
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
                          SizedBox(height: 10),
                          FormTextField(
                              icon: Icons.email,
                              labelText: "E-mail",
                              size: size, keyboardType: TextInputType.emailAddress,),
                          SizedBox(height: 10),
                          FormTextField(size: size, icon: Icons.person, labelText: "Nome", keyboardType: TextInputType.name,),
                          SizedBox(height: 10),
                          FormTextField(size: size, icon: Icons.phone, labelText: "Telefone", keyboardType: TextInputType.phone,),
                          SizedBox(height: 10),
                          FormPasswordField(size: size),
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
                                "CADASTRAR",
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
                              Text("Já tem uma conta?"),
                              TextButton(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
                                },
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
