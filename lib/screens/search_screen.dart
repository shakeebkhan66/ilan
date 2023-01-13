import 'package:flutter/material.dart';
import 'package:ilan/constants/customtextformfield.dart';

import '../constants/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // TODO TextEditingControllers
  TextEditingController searchController = TextEditingController();

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
                              )),
                          const SizedBox(height: 13.0),
                          Container(
                            height: 50,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: buttonColor),
                                borderRadius: BorderRadius.circular(30.0)
                              ),
                              child: const Text(
                            "A",
                            style: TextStyle(
                                color: backgroundColor, fontSize: 40.0),
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
                          CustomSearchTextFormField(
                            text: "Search",
                            icon: Icons.search,
                            myController: searchController,
                          ),
                          const SizedBox(
                            height: 13.0,
                          ),
                          Divider(
                            color: sideBarColor.withOpacity(0.4),
                            thickness: 0.5,
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 70.0),
                            child: OutlinedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                    side: const BorderSide(
                                        width: 10.0, color: Colors.black),
                                  ),
                                ),
                                fixedSize: MaterialStateProperty.resolveWith(
                                  (states) => const Size(270.0, 40.0),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return Colors.green;
                                    }
                                    return Colors
                                        .transparent; // Use the component's default.
                                  },
                                ),
                              ),
                              child: const Text(
                                "OPEN DOOR EA1",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 70.0),
                            child: OutlinedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                    side: const BorderSide(
                                        width: 10.0, color: Colors.black),
                                  ),
                                ),
                                fixedSize: MaterialStateProperty.resolveWith(
                                  (states) => const Size(270.0, 40.0),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return Colors.green;
                                    }
                                    return Colors
                                        .transparent; // Use the component's default.
                                  },
                                ),
                              ),
                              child: const Text(
                                "OPEN DOOR EA2",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 70.0),
                            child: Container(
                              height: 60,
                              width: 290,
                              margin: const EdgeInsets.only(top: 300),
                              color: sideBarColor.withOpacity(0.6),
                              child: Row(
                                children: [
                                  const SizedBox(width: 170,),
                                  Image.asset("assets/images/folder.png", height: 40,),
                                  const SizedBox(width: 8.0,),
                                  Image.asset("assets/images/setting.png", height: 50,),

                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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
