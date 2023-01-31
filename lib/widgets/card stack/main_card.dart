import 'package:flutter/material.dart';
import 'package:impact_digitech_assignment/colors.dart';
import 'package:impact_digitech_assignment/screens/product_screen.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProductScreen(),
          ),
        );
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 6,
        child: Card(
          elevation: 0,
          color: cardBg,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: Image(
                      image: const AssetImage('assets/images/kurta.jpg'),
                      width: MediaQuery.of(context).size.width / 4,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Kutir",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "Anarkali kurta with duppata set",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      const Chip(
                        backgroundColor: chip,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(2),
                          ),
                        ),
                        label: Padding(
                          padding: EdgeInsets.only(right: 10, left: 0),
                          child: Text("Size : S"),
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                                text: "Delivered :",
                                style: TextStyle(
                                  color: green,
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                              text: " 11 April | MON",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
