import 'package:flutter/material.dart';
import 'package:tevorozo_project_1/core/style/colors/colors.dart';

class Prescription extends StatelessWidget {
  const Prescription({
    super.key,
    required this.time,
    required this.specific,
  });

  final String time;
  final String specific;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Time.
        Text(
          time,
          style: TextStyle(fontSize: 16, color: faintBlack),
        ),

        // Specifics.
        Text(
          specific,
          style: TextStyle(fontSize: 15, color: faintBlack),
        ),
      ],
    );
  }
}
