import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tevorozo_project_1/core/style/colors/colors.dart';
import 'package:tevorozo_project_1/core/style/sizes/sizes.dart';
import 'package:tevorozo_project_1/core/widgets/custom_icon_button.dart';
import 'package:tevorozo_project_1/screens/screen_2/presentation/widgets/appointment_tile.dart';
import 'package:tevorozo_project_1/screens/screen_2/presentation/widgets/calendar.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: AppPaddings.inPadding),
          child: CustomIconButton(
            color: white,
            shadow: [shadowWithPrimaryColor(1, color: Colors.black12)],
            child: Icon(
              CupertinoIcons.chevron_back,
              color: faintBlack,
            ),
          ),
        ),
        title: const Text('Calendar'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPaddings.inPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Whitespace.
            Spacings.vert0,

            // Calendar.
            const Calendar(),

            // Whitespace
            Spacings.vert2,

            // Appointments.
            const Text(
              'Doctor Appointment',
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),

            // Whitespace
            const SizedBox(height: 20),

            // Appintment tiles.
            const AppointmentTile(
              imagePath: 'assets/images/image2.jpeg',
            ),

            // whitespace.
            const SizedBox(height: 10),

            const AppointmentTile(
              imagePath: 'assets/images/image3.jpeg',
            ),
          ],
        ),
      ),
    );
  }
}
