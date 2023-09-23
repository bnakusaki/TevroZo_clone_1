import 'package:flutter/material.dart';
import 'package:tevorozo_project_1/core/style/colors/colors.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 309,
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [for (double i = 1; i < 10; i++) shadowWithPrimaryColor(i)]),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text.rich(
                  TextSpan(
                    children: [
                      // Message.
                      TextSpan(
                        text: 'Select Area From Map',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: '\nBy this feature you can find your doctor easily',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                // Cancel button.
                Icon(
                  Icons.close,
                  color: faintBlack,
                )
              ],
            ),

            // Whitespace.
            const SizedBox(height: 25),
            // Map.
            Expanded(
              child: Container(
                height: 204,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/image10.jpeg'), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
