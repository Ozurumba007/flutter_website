import 'package:flutter/material.dart';
import 'package:flutter_website/utilis/colors.dart';
import 'package:flutter_website/utilis/styles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../utilis/constant.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MobileNavBar(),
      desktop: (BuildContext context) => DesktopNavBar(),
    );
  }

  // ============== MOBILE ===========

  Widget MobileNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          navLogo(),
        ],
      ),
    );
  }

  // ============== DESKTOP ===========

  Widget DesktopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Feature'),
              navButton('About US'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
              style: borderButtonStyle,
              onPressed: () {},
              child: Text(
                'Request a Demo',
                style: GoogleFonts.hindSiliguri(
                  color: AppColors.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: GoogleFonts.hindSiliguri(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 110,
      height: 55,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(logo),
        ),
      ),
    );
  }
}
