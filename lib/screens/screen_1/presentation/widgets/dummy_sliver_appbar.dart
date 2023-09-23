import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:tevorozo_project_1/core/style/colors/colors.dart';
import 'package:tevorozo_project_1/core/style/sizes/sizes.dart';
import 'package:tevorozo_project_1/core/style/text_styles/text_styles.dart';
import 'package:tevorozo_project_1/core/widgets/custom_icon_button.dart';
import 'package:tevorozo_project_1/screens/screen_1/presentation/widgets/doctor_tile.dart';

class DummySliverAppBar extends StatelessWidget {
  const DummySliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Dimensions.
      height: ScreenSize.height(context) * 0.349,

      // Style.
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: BorderRadii.circular0(),
          bottomRight: BorderRadii.circular0(),
        ),
        boxShadow: [for (double i = 1; i < 20; i++) shadowWithPrimaryColor(i)],
      ),

      // Child.
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(
            left: AppPaddings.inPadding,
            right: AppPaddings.inPadding,
            bottom: AppPaddings.inPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row 0.
              Row(
                children: [
                  CircleAvatar(
                    // TODO: factor with scale
                    radius: 22.5,
                    backgroundColor: white,
                    backgroundImage: const AssetImage('assets/images/image5.jpeg'),
                  ),

                  // Whitespace.
                  Spacings.hor2,

                  // Welcome message.
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Hello, Natasha',
                            style: TextStyles.body0,
                          ),
                          TextSpan(
                            text: '\nHow you feel today?',
                            style: TextStyles.heading0,
                          )
                        ],
                      ),
                    ),
                  ),

                  // Notification icon
                  Badge(
                    smallSize: 10,
                    backgroundColor: yellow,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: CustomIconButton(
                        child: Icon(
                          IconlyLight.notification,
                          color: white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Whitespace.
              Spacings.vert0,

              // Row 1.
              Text(
                'Your next doctor appoint date is',
                style: TextStyles.body1,
              ),

              // Whitespace.
              Spacings.vert1,
              // Row 2.
              Text(
                '12 December 2023',
                style: TextStyles.heading1,
              ),

              // Whitespace.
              Spacings.vert2,

              // Row 3.
              const DoctorTile(),
            ],
          ),
        ),
      ),
    );
  }
}
