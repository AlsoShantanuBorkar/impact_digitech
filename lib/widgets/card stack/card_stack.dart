import 'package:flutter/material.dart';
import 'package:impact_digitech_assignment/widgets/card%20stack/bottom_card.dart';
import 'package:impact_digitech_assignment/widgets/card%20stack/main_card.dart';

class CardStack extends StatefulWidget {
  const CardStack({super.key});

  @override
  State<CardStack> createState() => _CardStackState();
}

class _CardStackState extends State<CardStack> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        MainCard(),
        BottomCard(),
      ],
    );
  }
}
