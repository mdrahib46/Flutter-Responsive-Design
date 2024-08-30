import 'package:flutter/material.dart';
import 'package:responsivedesign/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ResponsiveDesign());
}

class ResponsiveDesign extends StatelessWidget {
  const ResponsiveDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme:  TextTheme(
          titleLarge: GoogleFonts.oswald(
            fontSize: 50,
            fontWeight: FontWeight.bold
          ),
          titleMedium:  GoogleFonts.oswald(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
          bodyMedium: GoogleFonts.roboto(
            fontSize: 16,
          )
        ),
       ),

      home: HomePage(),
    );
  }
}


