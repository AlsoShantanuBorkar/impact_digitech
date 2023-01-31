import 'package:flutter/material.dart';
import 'package:impact_digitech_assignment/colors.dart';

class ProductSpecifications extends StatelessWidget {
  const ProductSpecifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
      child: Card(
        elevation: 0,
        color: cardBg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Product Specifications",
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1.5,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.check_circle_outline,
                              size: 16,
                              color: green,
                            ),
                          ),
                          TextSpan(
                              text: "  Fabric : Cotton",
                              style: TextStyle(color: Colors.black))
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.check_circle_outline,
                              size: 16,
                              color: green,
                            ),
                          ),
                          TextSpan(
                              text: "  Garment : Kurta",
                              style: TextStyle(color: Colors.black))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.78,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.check_circle_outline,
                              size: 16,
                              color: green,
                            ),
                          ),
                          TextSpan(
                              text: "Garment Color : White",
                              style: TextStyle(color: Colors.black))
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.check_circle_outline,
                              size: 16,
                              color: green,
                            ),
                          ),
                          TextSpan(
                            text: "Size : S",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
