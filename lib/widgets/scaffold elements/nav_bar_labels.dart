import 'package:flutter/material.dart';

class NavBarLabels extends StatelessWidget {
  const NavBarLabels({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 3),
                child: Stack(
                  textDirection: TextDirection.ltr,
                  alignment: Alignment.center,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Home",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width / 6.5,
                      child: const Text(
                        "Categories",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                    const Text(
                      "Donate And Earn",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    Positioned(
                      right: MediaQuery.of(context).size.width / 6.5,
                      child: const Text(
                        "Wishlist",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Wallet",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              );
  }
}