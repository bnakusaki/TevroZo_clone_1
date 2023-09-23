import 'package:flutter/material.dart';
import 'package:tevorozo_project_1/core/style/colors/colors.dart';
import 'package:tevorozo_project_1/core/style/sizes/sizes.dart';
import 'package:tevorozo_project_1/core/style/text_styles/text_styles.dart';

class DoctorTile extends StatelessWidget {
  const DoctorTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //TODO: factor with scale.
      // Constraints.
      height: 70,

      // Style
      decoration: BoxDecoration(
        borderRadius: BorderRadii.mediumRadius,
        color: faintWhite1,
      ),

      // Child.
      child: Padding(
        padding: EdgeInsets.all(AppPaddings.inPadding1),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: white,
              //TODO: factor with scale
              radius: 27.0,
              backgroundImage: const AssetImage('assets/images/image4.jpeg'),
            ),
            // Whitespace.
            Spacings.hor2,
            // Doctor details.
            Expanded(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Dr. Smith Stuard', style: TextStyles.heading2),
                    TextSpan(text: '\nCardiologist', style: TextStyles.body2)
                  ],
                ),
              ),
            ),

            // Appointment time.
            Text('02:30 PM', style: TextStyles.body3)
          ],
        ),
      ),
    );
  }
}
