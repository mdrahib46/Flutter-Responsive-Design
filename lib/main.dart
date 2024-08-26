import 'package:flutter/material.dart';
import 'package:responsivedesign/homepage.dart';

void main() {
  runApp(const ResponsiveDesign());
}

class ResponsiveDesign extends StatelessWidget {
  const ResponsiveDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}


