import 'package:flutter/material.dart';
import 'package:tevorozo_project_1/core/style/colors/colors.dart';
import 'package:tevorozo_project_1/core/style/sizes/sizes.dart';

class MedicineTile extends StatelessWidget {
  const MedicineTile({
    super.key,
    this.value,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });
  final bool? value;
  final String title;
  final String subtitle;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      //TODO: factor with scale.
      // Constraints.
      height: 75,

      // Style.
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadii.mediumRadius,
      ),
      child: Padding(
        padding: EdgeInsets.all(AppPaddings.inPadding1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Drug image.
            Container(
              width: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Whitespace.
            Spacings.hor0,

            // Drug info.
            Expanded(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        height: 1.0,
                      ),
                    ),
                    TextSpan(
                      text: '\n$subtitle',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        height: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              //TODO: factor with scale.
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: value != null ? primaryColor : null,
                border: Border.all(
                  color: faintBlack,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: value != null
                    ? Icon(
                        Icons.check,
                        color: white,
                        size: 17,
                      )
                    : null,
              ),
            )
          ],
        ),
      ),
    );
  }
}
