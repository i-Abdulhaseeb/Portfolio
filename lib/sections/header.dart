import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/custom_button.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});
  @override
  Widget build(context) {
    final isDarkmode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return AppBar(
            backgroundColor: isDarkmode ? Colors.white : Colors.black,
          );
        } else {
          return AppBar(
            backgroundColor: isDarkmode ? Colors.white : Colors.black,
            actions: [
              CustomTextButton(title: "Home"),
              CustomTextButton(title: "About"),
              CustomTextButton(title: "Projects"),
              CustomTextButton(title: "Contact"),
            ],
          );
        }
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
