import 'package:flutter/material.dart';
import 'package:impact_digitech_assignment/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 35,
        child: TextField(
          decoration: InputDecoration(
            hintStyle: TextStyle(
              color: Colors.grey.shade500,
            ),
            filled: true,
            hoverColor: cardBg,
            focusColor: cardBg,
            fillColor: cardBg,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: green,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: green,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            isDense: true,
            contentPadding: const EdgeInsets.all(8),
            hintText: "Search In Orders",
            suffixIcon: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
