import 'package:flutter/material.dart';
import 'package:impact_digitech_assignment/widgets/scaffold%20elements/nav_bar_labels.dart';
import 'package:ionicons/ionicons.dart';

import 'package:impact_digitech_assignment/colors.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatefulWidget {
  int selected;
  BottomNavBar({
    super.key,
    required this.selected,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: green,
      shape: AutomaticNotchedShape(
        const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      notchMargin: 6,
      child: SizedBox(
        height: 65,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Stack(
                  textDirection: TextDirection.ltr,
                  alignment: Alignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        child: widget.selected == 0
                            ? Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: const Icon(
                                  Icons.home_outlined,
                                  color: green,
                                  size: 30,
                                ),
                              )
                            : const Icon(
                                Icons.home_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                        onTap: () {
                          setState(() {
                            widget.selected = 0;
                          });
                        },
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width / 5.5,
                      child: InkWell(
                        child: widget.selected == 1
                            ? Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: const Icon(
                                  Icons.category_outlined,
                                  color: green,
                                  size: 30,
                                ),
                              )
                            : const Icon(
                                Icons.category_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                        onTap: () {
                          setState(() {
                            widget.selected = 1;
                          });
                        },
                      ),
                    ),
                    Positioned(
                      right: MediaQuery.of(context).size.width / 6,
                      child: InkWell(
                        child: widget.selected == 2
                            ? Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: const Icon(
                                  Ionicons.heart_outline,
                                  color: green,
                                  size: 30,
                                ),
                              )
                            : const Icon(
                                Ionicons.heart_outline,
                                color: Colors.white,
                                size: 30,
                              ),
                        onTap: () {
                          setState(() {
                            widget.selected = 2;
                          });
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: widget.selected == 3
                            ? Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: const Icon(
                                  Icons.wallet_outlined,
                                  color: green,
                                  size: 30,
                                ),
                              )
                            : const Icon(
                                Icons.wallet_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                        onTap: () {
                          setState(() {
                            widget.selected = 3;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const NavBarLabels()
            ],
          ),
        ),
      ),
    );
  }
}
