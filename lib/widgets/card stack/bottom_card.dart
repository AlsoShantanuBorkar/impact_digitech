import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:impact_digitech_assignment/colors.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            elevation: 0,
            color: cardBg,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextButton.icon(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: green,
                  size: 15,
                ),
                onPressed: () {},
                label: const Text(
                  "Exchange/Return",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
            child: Card(
              elevation: 0,
              color: cardBg,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Rate Product:',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      child: RatingBar(
                        itemSize: 20,
                        glow: false,
                        itemCount: 5,
                        ratingWidget: RatingWidget(
                            full: const Icon(
                              Icons.star,
                              color: green,
                            ),
                            half: const Icon(
                              Icons.star_half_outlined,
                              color: green,
                            ),
                            empty: const Icon(
                              Icons.star_border_outlined,
                              color: green,
                            )),
                        onRatingUpdate: ((value) {}),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
