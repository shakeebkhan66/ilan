import 'package:flutter/material.dart';
import 'package:ilan/screens/login_page.dart';

import '../constants/colors.dart';


class StartingPage extends StatefulWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  @override
  Widget build(BuildContext context) {
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
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                        },
                        child: const Icon(Icons.add, color: backgroundColor, size: 50.0,))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
