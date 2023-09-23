import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:tevorozo_project_1/core/style/colors/colors.dart';

class AppointmentTile extends StatelessWidget {
  const AppointmentTile({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Constraints.
      height: 150,

      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            Container(
              // Constraints.
              width: 109,
              height: 130,

              // Style.
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // White Space.
            const SizedBox(width: 10),

            // Description.
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. Abul Hayat Kamal',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '\nCardiologist',
                    style: TextStyle(color: Colors.black54),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: ReviewRate(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Appointment Type: Onlines',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  Text(
                    'Appointment Time: 04:30 PM',
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.more_vert_sharp,
              size: 30,
              color: Colors.black26,
            )
          ],
        ),
      ),
    );
  }
}

class ReviewRate extends StatelessWidget {
  const ReviewRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 13,
          width: 35,
          decoration: BoxDecoration(
            color: yellow,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                    child: Icon(
                  IconlyLight.star,
                  size: 10,
                  color: white,
                )),
                Text(
                  '4.8',
                  style: TextStyle(color: white, fontSize: 10),
                )
              ],
            ),
          ),
        ),

        // whitespace.
        const SizedBox(width: 5),
        const Text(
          '2k reviews',
          style: TextStyle(color: Colors.black54),
        )
      ],
    );
  }
}
