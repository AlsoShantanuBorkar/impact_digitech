import 'package:flutter/material.dart';

class ProductImageStack extends StatelessWidget {
  const ProductImageStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        AspectRatio(
          aspectRatio: .8,
          child: Image(
            image: const AssetImage('assets/images/kurta.jpg'),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Opacity(
                  opacity: .8,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey.shade600),
                    child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.home_outlined,
                        size: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: .8,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey.shade600),
                    child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        size: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.8,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey.shade600),
                    child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.share_outlined,
                        size: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
