import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/data/tech_data.dart';
import 'package:transparent_image/transparent_image.dart';

class TechstackSection extends StatelessWidget {
  const TechstackSection({super.key});
  @override
  Widget build(context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Align(
      alignment: AlignmentGeometry.topLeft,

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        child: Column(
          children: [
            Text(
              "TechStack",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 15),
            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 1,
              ),
              children: [
                ...TechDemoData.map(
                  (value) => InkWell(
                    splashColor: isDarkMode ? Colors.black : Colors.white,
                    onTap: () {},
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 200,
                            color: isDarkMode ? Colors.black : Colors.white,
                            child: Image.asset(
                              value.icon,
                              height: 100,
                              width: 100,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            value.name,
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              5,
                              (index) => Icon(
                                index < value.level
                                    ? Icons.star
                                    : Icons.star_border_outlined,
                                color: isDarkMode
                                    ? Colors.amber
                                    : const Color.fromARGB(255, 101, 101, 101),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
