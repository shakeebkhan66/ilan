import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ilan/constants/customtextformfield.dart';
import 'package:ilan/model/buttonmodel_class.dart';
import 'package:ilan/screens/setting_screen.dart';

import '../constants/colors.dart';
import '../model/ButtonModel.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // TODO TextEditingControllers
  TextEditingController searchController = TextEditingController();
  String search = "";

  List _items = [];

  // TODO Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/buttonjson/file.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["results"];
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    print(screenHeight);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
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
                        )),
                    const SizedBox(height: 13.0),
                    Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: buttonColor),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: const Text(
                          "A",
                          style:
                              TextStyle(color: backgroundColor, fontSize: 40.0),
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
                        padding: const EdgeInsets.only(top: 20.0, right: 7.0),
                        child: Image.asset("assets/images/Logo.png"),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      CustomSearchTextFormField(
                        text: "Search",
                        icon: Icons.search,
                        myController: searchController,
                        onChanged: (String? value) {
                          setState(() {
                            search = value.toString();
                          });
                        },
                      ),
                      const SizedBox(
                        height: 13.0,
                      ),
                      Divider(
                        color: sideBarColor.withOpacity(0.4),
                        thickness: 0.5,
                      ),


                      // const SizedBox(
                      //   height: 15.0,
                      // ),
                      // Padding(
                      //   padding:
                      //       const EdgeInsets.only(right: 18.0, left: 10.0),
                      //   child: OutlinedButton(
                      //     onPressed: () {},
                      //     style: ButtonStyle(
                      //       shape: MaterialStateProperty.all(
                      //         RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(14.0),
                      //           side: const BorderSide(
                      //               width: 10.0, color: Colors.black),
                      //         ),
                      //       ),
                      //       fixedSize: MaterialStateProperty.resolveWith(
                      //         (states) => const Size(270.0, 40.0),
                      //       ),
                      //       backgroundColor:
                      //           MaterialStateProperty.resolveWith<Color>(
                      //         (Set<MaterialState> states) {
                      //           if (states.contains(MaterialState.pressed)) {
                      //             return Colors.green;
                      //           }
                      //           return Colors
                      //               .transparent;
                      //         },
                      //       ),
                      //     ),
                      //     child: const Text(
                      //       "OPEN DOOR EA1",
                      //       style: TextStyle(
                      //         color: Colors.black,
                      //         fontSize: 17.0,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 15.0,
                      // ),
                      // Padding(
                      //   padding:
                      //       const EdgeInsets.only(right: 18.0, left: 10.0),
                      //   child: OutlinedButton(
                      //     onPressed: () {},
                      //     style: ButtonStyle(
                      //       shape: MaterialStateProperty.all(
                      //         RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(14.0),
                      //           side: const BorderSide(
                      //               width: 10.0, color: Colors.black),
                      //         ),
                      //       ),
                      //       fixedSize: MaterialStateProperty.resolveWith(
                      //         (states) => const Size(270.0, 40.0),
                      //       ),
                      //       backgroundColor:
                      //           MaterialStateProperty.resolveWith<Color>(
                      //         (Set<MaterialState> states) {
                      //           if (states.contains(MaterialState.pressed)) {
                      //             return Colors.green;
                      //           }
                      //           return Colors
                      //               .transparent;
                      //         },
                      //       ),
                      //     ),
                      //     child: const Text(
                      //       "OPEN DOOR EA2",
                      //       style: TextStyle(
                      //         color: Colors.black,
                      //         fontSize: 17.0,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: [
                              // Display the data loaded from sample.json
                              _items.isNotEmpty
                                  ? Expanded(
                                      child: ListView.builder(
                                        itemCount: _items.length,
                                        itemBuilder: (context, index) {
                                          late String position =
                                              _items[index]['name'].toString();
                                          if (searchController.text.isEmpty) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 18.0, left: 10.0),
                                              child: OutlinedButton(
                                                onPressed: () {},
                                                style: ButtonStyle(
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                      side: const BorderSide(
                                                          width: 10.0,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  fixedSize:
                                                      MaterialStateProperty
                                                          .resolveWith(
                                                    (states) =>
                                                        const Size(270.0, 40.0),
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty
                                                          .resolveWith<Color>(
                                                    (Set<MaterialState>
                                                        states) {
                                                      if (states.contains(
                                                          MaterialState
                                                              .pressed)) {
                                                        return Colors.green;
                                                      }
                                                      return Colors.transparent;
                                                    },
                                                  ),
                                                ),
                                                child: Text(
                                                  "OPEN DOOR ${_items[index]["name"]}",
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17.0,
                                                  ),
                                                ),
                                              ),
                                            );
                                          } else if (position
                                              .toLowerCase()
                                              .contains(searchController.text
                                                  .toLowerCase())) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 18.0, left: 10.0),
                                              child: OutlinedButton(
                                                onPressed: () {},
                                                style: ButtonStyle(
                                                  shape:
                                                      MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                      side: const BorderSide(
                                                          width: 10.0,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  fixedSize:
                                                      MaterialStateProperty
                                                          .resolveWith(
                                                    (states) =>
                                                        const Size(270.0, 40.0),
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty
                                                          .resolveWith<Color>(
                                                    (Set<MaterialState>
                                                        states) {
                                                      if (states.contains(
                                                          MaterialState
                                                              .pressed)) {
                                                        return Colors.green;
                                                      }
                                                      return Colors.transparent;
                                                    },
                                                  ),
                                                ),
                                                child: Text(
                                                  "OPEN DOOR ${_items[index]["name"]}",
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17.0,
                                                  ),
                                                ),
                                              ),
                                            );
                                          } else {
                                            return Container();
                                          }
                                        },
                                      ),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ],
          ),

        ],
      ),

      // TODO Bottom Navigation Bar
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: sideBarColor.withOpacity(0.7),
              textTheme: Theme.of(context).textTheme.copyWith(
                  caption: TextStyle(color: sideBarColor.withOpacity(0.7)))),
          child: Row(
            children: [
              Container(
                color: sideBarColor,
                height: 60,
                width: 70.0,
              ),
              Expanded(
                child: Container(
                  height: 60,
                  color: sideBarColor.withOpacity(0.7),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 190,
                      ),
                      Image.asset(
                        "assets/images/folder.png",
                        height: 35,
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SettingScreen()));
                          },
                          child: Image.asset(
                            "assets/images/setting.png",
                            height: 40,
                          )),
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
