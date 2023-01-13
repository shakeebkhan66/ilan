import 'package:flutter/material.dart';


class Shaki extends StatefulWidget {
  const Shaki({Key? key}) : super(key: key);

  @override
  State<Shaki> createState() => _ShakiState();
}

class _ShakiState extends State<Shaki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Sjaki"),
      ),
    );
  }
}
