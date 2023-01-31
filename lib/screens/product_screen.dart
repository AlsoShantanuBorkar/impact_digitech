import 'package:flutter/material.dart';
import 'package:impact_digitech_assignment/colors.dart';
import 'package:impact_digitech_assignment/widgets/product%20elements/delivery_field.dart';
import 'package:impact_digitech_assignment/widgets/product%20elements/order_amount.dart';
import 'package:impact_digitech_assignment/widgets/product%20elements/product_image_stack.dart';
import 'package:impact_digitech_assignment/widgets/product%20elements/product_specifications.dart';
import 'package:impact_digitech_assignment/widgets/product%20elements/product_title.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const ProductImageStack(),
          const ProductTitle(),
          const OrderAmountCard(),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Divider(
              thickness: 1,
              color: chip,
            ),
          ),
          const ProductSpecifications(),
          const DeliveryField(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 0,
              color: cardBg,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: RichText(
                  text: const TextSpan(children: [
                    WidgetSpan(
                      child: Icon(Icons.workspace_premium_outlined),
                    ),
                    TextSpan(
                      text: "  Genuine Solar Product",
                      style: TextStyle(color: Colors.black,fontSize: 16),
                    ),
                  ]),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
