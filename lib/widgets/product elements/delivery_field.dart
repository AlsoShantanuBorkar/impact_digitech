import 'package:flutter/material.dart';
import 'package:impact_digitech_assignment/colors.dart';

class DeliveryField extends StatelessWidget {
  const DeliveryField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        elevation: 0,
        color: cardBg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Delivery and Services",
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 40,
                      child: const TextField(
                        decoration: InputDecoration(
                          focusedBorder:  OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: green,
                            ),
                          ),
                          enabledBorder:  OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: green,
                            ),
                          ),
                          isDense: true,
                          contentPadding: EdgeInsets.all(12),
                          border: OutlineInputBorder(),
                          hintText: "Enter Pincode",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextButton(
                        onPressed: (() {}),
                        style: TextButton.styleFrom(backgroundColor: green),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Verify",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    )
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
