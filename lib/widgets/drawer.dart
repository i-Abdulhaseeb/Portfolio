import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<Color> darkModeColors = [Colors.black, Colors.grey.shade900];

final List<Color> lightModeColors = [Colors.black, Colors.grey.shade900];

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});
  @override
  Widget build(context) {
    final isDarkmode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: EdgeInsetsGeometry.all(0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: isDarkmode ? darkModeColors : lightModeColors,

                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset('assets/me.png', width: 150),
                ),
                Text(
                  "Contact Me",
                  style: GoogleFonts.abel(
                    color: isDarkmode ? Colors.white : Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text(
              "ah.haseeb69@gmail.com",
              style: GoogleFonts.lato(fontSize: 18),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.linkedin),
            title: Text(
              "ah.haseeb69@gmail.com",
              style: GoogleFonts.lato(fontSize: 18),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.github),
            title: Text("i-Abdulhaseeb", style: GoogleFonts.lato(fontSize: 18)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
