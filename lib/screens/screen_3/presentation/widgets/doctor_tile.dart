import 'package:flutter/material.dart';
import 'package:tevorozo_project_1/core/style/colors/colors.dart';
import 'package:tevorozo_project_1/core/style/sizes/sizes.dart';
import 'package:tevorozo_project_1/screens/screen_2/presentation/widgets/appointment_tile.dart';

class DoctorTilefor3 extends StatelessWidget {
  const DoctorTilefor3({
    super.key,
    required this.drName,
    required this.imagePath,
  });

  final String drName;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              height: 70,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Whitespace.
            Spacings.hor0,

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  drName,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.0),
                  child: Text(
                    'General Practitioner',
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
                const ReviewRate()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
