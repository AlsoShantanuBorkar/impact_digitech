import 'package:flutter/material.dart';
import 'package:impact_digitech_assignment/colors.dart';

class OrderAmountCard extends StatelessWidget {
  const OrderAmountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              color: Colors.white,
              elevation: 0,
              child: RichText(
                text: const TextSpan(
                  text: "₹",
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: "2000",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                      ),
                    ),
                    TextSpan(
                      text: "  ₹",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "1500",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "\t25% off",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    TextSpan(
                      text: "\nInclusive of all taxes ",
                      style:
                          TextStyle(color: green, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}