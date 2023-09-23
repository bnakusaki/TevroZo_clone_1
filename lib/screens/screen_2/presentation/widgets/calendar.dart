import 'package:flutter/material.dart';
import 'package:tevorozo_project_1/core/style/colors/colors.dart';
import 'package:tevorozo_project_1/core/style/sizes/sizes.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> daysOfWeek = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];

    return Container(
      // Constraints
      height: 320,

      // style
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          shadowWithPrimaryColor(0.5, color: Colors.black12),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Month.
            const Text(
              'December 2023',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),

            // Whitespace.
            Spacings.vert1,
            Spacings.vert1,

            // Days of week.
            Row(
              children: [
                for (String x in daysOfWeek)
                  Expanded(
                    child: Text(
                      x,
                      style: const TextStyle(color: Colors.black, fontSize: 11),
                      textAlign: TextAlign.center,
                    ),
                  ),
              ],
            ),

            // divider.
            const Divider(height: 30),

            // First row.
            Expanded(
                child: Row(
              children: [
                for (int i = 27; i < 31; i++)
                  Expanded(
                      child: Text(
                    '$i',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black26,
                    ),
                  )),
                for (int i = 1; i < 4; i++)
                  Expanded(
                      child: Text(
                    '$i',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: faintBlack,
                    ),
                  ))
              ],
            )),
            // Inbetween.
            for (int x = 0; x < 5; x++)
              Expanded(
                child: Row(
                  children: [
                    for (int i = 4; i < 11; i++)
                      Expanded(
                          child: (i + (x * 7)) == 6
                              ? const OutlinedDate()
                              : (i + (x * 7)) == 13
                                  ? const FilledDate()
                                  : Text(
                                      '${i + (x * 7)}',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                      ),
                                    ))
                  ],
                ),
              ),
            // Last row.
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class OutlinedDate extends StatelessWidget {
  const OutlinedDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(
        child: Text(
          '6',
          style: TextStyle(
            fontSize: 12,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}

class FilledDate extends StatelessWidget {
  const FilledDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          '13',
          style: TextStyle(
            fontSize: 12,
            color: white,
          ),
        ),
      ),
    );
  }
}
