import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/models/aboutSection_model.dart';
import 'package:portfolio_website/data/aboutMeData.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({super.key});
  @override
  State<AboutSection> createState() {
    return _AboutSectionState();
  }
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    final about = aboutMe;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: BoxBorder.all(
                color: isDarkMode ? Colors.black : Colors.white,
                width: 4,
              ),
            ),
            child: ClipOval(
              child: Image.asset(about.picture, fit: BoxFit.contain),
            ),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About Me",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  about.aboutMeDetail,
                  softWrap: true,
                  style: const TextStyle(fontSize: 16, height: 1.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
