import 'package:flutter/material.dart';
import 'package:impact_digitech_assignment/colors.dart';
import 'package:ionicons/ionicons.dart';

class ProductTitle extends StatefulWidget {
  const ProductTitle({super.key});

  @override
  State<ProductTitle> createState() => _ProductTitleState();
}

class _ProductTitleState extends State<ProductTitle> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.7,
                  child: Card(
                    elevation: 0,
                    color: cardBg,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: RichText(
                        text: const TextSpan(
                            text: "Customized",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            children: [
                              TextSpan(
                                  text: "\nCotton Khadi Kurta",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16))
                            ]),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () => setState(() {
                      isLiked = !isLiked;
                    }),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: cardBg,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Icon(
                          isLiked ? Ionicons.heart : Ionicons.heart_outline,
                          size: 32,
                          color: green,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}