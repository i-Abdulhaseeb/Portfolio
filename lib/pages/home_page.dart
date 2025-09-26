import 'package:flutter/material.dart';
import 'package:portfolio_website/sections/about_section.dart';
import 'package:portfolio_website/sections/header.dart';
import 'package:portfolio_website/sections/hero_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      appBar: Header(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [HeroSection(), SizedBox(height: 300), AboutSection()],
          ),
        ),
      ),
    );
  }
}
