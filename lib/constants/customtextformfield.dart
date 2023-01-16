import 'package:flutter/material.dart';
import 'package:ilan/constants/colors.dart';

// TODO Simple TextFormFields
class CustomTextField extends StatelessWidget {
  String? text;
  final TextEditingController myController;
  final String? Function(String?)? validator;
  CustomTextField(
      {Key? key,
      required this.text,
      required this.myController,
      required this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0, left: 10),
      child: SizedBox(
        height: 45.0,
        child: TextFormField(
          controller: myController,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
              hintText: text,
              hintStyle: const TextStyle(color: sideBarColor, fontSize: 13.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black54),
                  borderRadius: BorderRadius.circular(18.0)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: sideBarColor),
                  borderRadius: BorderRadius.circular(18.0))),
        ),
      ),
    );
  }
}

// TODO SearchTextFormField
class CustomSearchTextFormField extends StatelessWidget {
  String? text;
  final String? Function(String?)? onChanged;
  final TextEditingController myController;
  IconData? icon;
  CustomSearchTextFormField(
      {Key? key,
      required this.text,
      required this.icon,
        required this.onChanged,
      required this.myController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0, left: 10.0),
      child: SizedBox(
        height: 45.0,
        child: TextFormField(
          controller: myController,
          onChanged: onChanged,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
              hintText: text,
              prefixIcon: Icon(
                icon,
                color: sideBarColor,
              ),
              hintStyle: const TextStyle(color: sideBarColor, fontSize: 13.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black54),
                  borderRadius: BorderRadius.circular(18.0)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: sideBarColor),
                  borderRadius: BorderRadius.circular(18.0))),
        ),
      ),
    );
  }
}
