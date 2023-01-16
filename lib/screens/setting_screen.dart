
import 'package:flutter/material.dart';
import 'package:ilan/constants/customtextformfield.dart';

import '../constants/colors.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Row(
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
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          padding:
                          const EdgeInsets.only(top: 20.0, right: 10.0),
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
                          padding: const EdgeInsets.only(right: 10.0),
                          child: InkWell(
                            onTap: (){
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
                                "Save",
                                style: TextStyle(
                                  color: backgroundColor,
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 10.0,top: 15),
                          child: InkWell(
                            onTap: (){
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
                                "Dalete",
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
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
