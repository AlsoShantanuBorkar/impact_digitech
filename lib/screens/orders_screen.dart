import 'package:flutter/material.dart';
import 'package:impact_digitech_assignment/widgets/card%20stack/card_stack.dart';
import 'package:impact_digitech_assignment/widgets/scaffold%20elements/bottom_navigation_bar.dart';
import 'package:impact_digitech_assignment/widgets/scaffold%20elements/custom_app_bar.dart';
import 'package:impact_digitech_assignment/widgets/scaffold%20elements/custom_floating_action_button.dart';
import 'package:impact_digitech_assignment/widgets/search_bar.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CustomAppBar(),
        ),
        floatingActionButton: const 
        CustomFAB(),
        bottomNavigationBar: BottomNavBar(
          selected: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const [
              SizedBox(
                height: 10,
              ),
              SearchBar(),
              CardStack(),
              CardStack(),
              
            ],
          ),
        ));
  }
}
