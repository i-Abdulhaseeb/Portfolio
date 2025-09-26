import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/utils/download_stub.dart'
    if (dart.library.html) 'package:portfolio_website/utils/download_web.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});
  @override
  Widget build(context) {
    final isDarkmode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Column(
      children: [
        Text(
          "Abdul Haseeb",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: isDarkmode
                ? Theme.of(context).colorScheme.onSurface
                : Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Flutter Developer",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: isDarkmode
                ? Theme.of(context).colorScheme.onSurface
                : Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: downloadResume,
              child: Text("Download Resume"),
            ),
            SizedBox(width: 10),
            ElevatedButton(onPressed: () {}, child: Text("Contact Me")),
          ],
        ),
      ],
    );
  }
}
