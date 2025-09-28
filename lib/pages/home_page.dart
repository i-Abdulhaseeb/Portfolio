import 'package:flutter/material.dart';
import 'package:portfolio_website/sections/about_section.dart';
import 'package:portfolio_website/sections/header.dart';
import 'package:portfolio_website/sections/hero_section.dart';
import 'package:portfolio_website/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Scaffold(
            drawer: DrawerWidget(),
            appBar: Header(),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HeroSection(),
                    SizedBox(height: 200),
                    AboutSection(),
                  ],
                ),
              ),
            ),
          );
        } else {
          return Scaffold(
            appBar: Header(),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HeroSection(),
                    SizedBox(height: 200),
                    AboutSection(),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
