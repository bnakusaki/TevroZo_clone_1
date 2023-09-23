import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:tevorozo_project_1/core/style/colors/colors.dart';
import 'package:tevorozo_project_1/core/style/sizes/sizes.dart';
import 'package:tevorozo_project_1/core/style/text_styles/text_styles.dart';
import 'package:tevorozo_project_1/screens/screen_1/presentation/widgets/build_prescription.dart';
import 'package:tevorozo_project_1/screens/screen_1/presentation/widgets/dummy_sliver_appbar.dart';
import 'package:tevorozo_project_1/screens/screen_1/presentation/widgets/medicine_tile.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            // Bummy AppBar.
            const DummySliverAppBar(),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Upcomming medicine.
                  Text('Upcoming medicine', style: TextStyles.heading3),

                  // Durgs
                  // Whitespace.
                  const SizedBox(height: 25),

                  const Prescription(time: 'Night', specific: 'Before Dinner'),

                  // Whitespace.
                  const SizedBox(height: 20),
                  const MedicineTile(
                    title: 'Seclo-20',
                    subtitle: 'Omiprazole-20 (Capsule)',
                    value: true,
                    imagePath: 'assets/images/image8.jpeg',
                  ),

                  // Whitespace.
                  const SizedBox(height: 10),

                  const MedicineTile(
                    title: 'Alatrol',
                    subtitle: 'Cetirizine-20 (Tab)',
                    imagePath: 'assets/images/image9.jpeg',
                  ),

                  // Whitespace.
                  const SizedBox(height: 30),

                  // After dinner.
                  const Prescription(time: 'Night', specific: 'After Dinner'),
                  // Whitespace.
                  const SizedBox(height: 20),
                  const MedicineTile(
                    title: 'Napa - 1',
                    subtitle: 'Omiprazole-20 (Tab)',
                    imagePath: 'assets/images/image7.jpeg',
                  ),

                  // Nav bar
                  // CustomPaint(
                  // painter: NavBarPainter(),
                  // child: SizedBox(
                  // height: 185,
                  // width: ScreenSize.width(context),
                  // ),
                  // ),
                ],
              ),
            ),
          ],
        ),

        // Floating action button.
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: primaryColor,
          onPressed: () {},
          elevation: 20,
          child: Icon(Icons.add, color: white),
        ),

        // Floating action button position.
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        // Bottom Navigation bar.
        bottomNavigationBar: SizedBox(
          height: 90,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 90,
                  width: ScreenSize.width(context),
                  child: Stack(
                    children: [
                      CustomPaint(
                        size: Size(ScreenSize.width(context), 90),
                        painter: NavBarPainter(),
                      ),
                      const CustomNavBar()
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
        //  BottomNavigationBar(
        // items: [
        // BottomNavigationBarItem(icon: Icon(IconlyBold.home, color: wiredGrey), label: ''),
        // BottomNavigationBarItem(icon: Icon(IconlyLight.calendar, color: wiredGrey), label: ''),
        // BottomNavigationBarItem(icon: Icon(IconlyLight.chart, color: wiredGrey), label: ''),
        // BottomNavigationBarItem(icon: Icon(IconlyLight.profile, color: wiredGrey), label: ''),
        // ],
        // elevation: 20,
        // ),
        );
  }
}

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: BorderRadii.circular1(),
          topRight: BorderRadii.circular1(),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Icon(
                IconlyBold.home,
                color: Color.fromARGB(255, 71, 71, 71),
              ),

              // Whitespace.
              SizedBox(width: 50),

              Icon(
                IconlyLight.calendar,
                color: Color.fromARGB(255, 71, 71, 71),
              ),
            ]),
            Row(children: [
              Icon(
                IconlyLight.chart,
                color: Color.fromARGB(255, 71, 71, 71),
              ),

              // Whitespace.
              SizedBox(width: 50),

              Icon(
                IconlyLight.profile,
                color: Color.fromARGB(255, 71, 71, 71),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

class NavBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path()..moveTo(0, 20);

    // small arc 1.
    path.quadraticBezierTo(0, 0, 15, 0);

    // line to dent.
    path.lineTo((size.width / 2) - 55, 0);

    // Arc into dent.
    path.quadraticBezierTo((size.width / 2) - 40, 0, (size.width / 2) - 40, 20);

    // BOSSMAN .
    path.arcToPoint(
      Offset((size.width / 2) + 40, 20),
      radius: const Radius.circular(0.1),
      clockwise: false,
    );
    // Arc from dent.
    path.quadraticBezierTo((size.width / 2) + 40, 0, (size.width / 2) + 55, 0);

    // Line from dent.
    path.lineTo(size.width - 15, 0);

    // small arc 2.
    path.quadraticBezierTo(size.width, 0, size.width, 20);

    // line down 1.
    path.lineTo(size.width, size.height);

    // line through backyard.
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
