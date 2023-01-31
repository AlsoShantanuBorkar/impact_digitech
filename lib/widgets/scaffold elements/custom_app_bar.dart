import 'package:flutter/material.dart';
import 'package:impact_digitech_assignment/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Text(
        "Orders",
        style: TextStyle(fontSize: 18),
      ),
      leading: const Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Icon(
          Icons.arrow_back,
          size: 18,
        ),
      ),
      leadingWidth: 25,
      backgroundColor: green,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
    );
  }
}
