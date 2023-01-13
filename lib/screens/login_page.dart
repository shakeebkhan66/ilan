import 'package:flutter/material.dart';
import 'package:ilan/constants/customtextformfield.dart';
import 'package:ilan/screens/search_screen.dart';

import '../constants/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO TextEditingControllers
  TextEditingController siteController = TextEditingController();
  TextEditingController urlController = TextEditingController();
  TextEditingController utilController = TextEditingController();
  TextEditingController motController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: 70.0,
                      color: sideBarColor,
                      child: Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Image.asset("assets/images/icon.png")),
                          const SizedBox(height: 10.0),
                          const Divider(
                            thickness: 0.5,
                            color: backgroundColor,
                          ),
                          const SizedBox(height: 5.0),
                          InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.add,
                                color: backgroundColor,
                                size: 50.0,
                              ))
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.only(top: 20.0, right: 62.0),
                            child: Image.asset("assets/images/Logo.png"),
                          ),
                          const SizedBox(
                            height: 25.0,
                          ),
                          CustomTextField(
                            text: "Site name :",
                            myController: siteController,
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return "Field is required";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          CustomTextField(
                            text: "Url :",
                            myController: urlController,
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return "Field is required";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          CustomTextField(
                            text: "Utilisateur :",
                            myController: utilController,
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return "Field is required";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          CustomTextField(
                            text: "Mot de passe :",
                            myController: motController,
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return "Field is required";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 25.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 70.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
                              },
                              child: Container(
                                height: 47,
                                width: 220,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: buttonColor,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: const Text(
                                  "SE CONNECTER",
                                  style: TextStyle(
                                    color: backgroundColor,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
