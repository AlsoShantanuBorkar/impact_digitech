import 'package:flutter/material.dart';
import 'package:impact_digitech_assignment/colors.dart';
import 'package:ionicons/ionicons.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 60,
          width: 60,
          child: Material(
            type: MaterialType.transparency,
            child: Ink(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green.shade900, width: 1.5),
                color: green,
                shape: BoxShape.circle,
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(500.0),
                onTap: () {},
                child: const Icon(
                  Ionicons.shirt,
                  color: Colors.white,
                  
                ),
              ),
            ),
          ),
        );
  }
}