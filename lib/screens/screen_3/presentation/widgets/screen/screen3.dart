import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tevorozo_project_1/core/style/colors/colors.dart';
import 'package:tevorozo_project_1/core/style/sizes/sizes.dart';
import 'package:tevorozo_project_1/core/widgets/custom_icon_button.dart';
import 'package:tevorozo_project_1/screens/screen_3/presentation/widgets/doctor_tile.dart';
import 'package:tevorozo_project_1/screens/screen_3/presentation/widgets/map_widget.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar.
      appBar: AppBar(
        leading: CustomIconButton(
          color: white,
          shadow: [shadowWithPrimaryColor(1, color: Colors.black12)],
          child: Icon(
            CupertinoIcons.chevron_back,
            color: faintBlack,
          ),
        ),
        title: const Text('Find Doctors'),
        actions: [
          CustomIconButton(
            color: white,
            shadow: [shadowWithPrimaryColor(1, color: Colors.black12)],
            child: Icon(
              CupertinoIcons.search,
              color: faintBlack,
            ),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Column(
          children: [
            // Map Widget.
            const MapWidget(),

            // Whitespace
            const SizedBox(height: 30),

            // Recommendations.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recommended',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Sea all',
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            // Whitespace
            Spacings.vert0,

            // Doctor tiles.
            const DoctorTilefor3(
              drName: 'Dr. Widro Wilson',
              imagePath: 'assets/images/image1.jpeg',
            ),

            Spacings.vert1,

            const DoctorTilefor3(
              drName: 'Dr. Wade Warren',
              imagePath: 'assets/images/image2.jpeg',
            ),

            Spacings.vert1,

            const DoctorTilefor3(
              drName: 'Dr. Brooklvn Simmons',
              imagePath: 'assets/images/image3.jpeg',
            ),
          ],
        ),
      ),
    );
  }
}
