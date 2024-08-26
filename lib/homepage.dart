import 'package:flutter/material.dart';
import 'package:responsivedesign/widgets/navmanu.dart';
import 'package:responsivedesign/widgets/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Design'),
      ),
      drawer: const NavManu(),
      body:  ResponsiveBuilder(

        /// this is mobile screen
        mobile: _buildMobileScreenLayout(),


        /// this is tablet Screen
        tablet: _buildTabletScreenLayout(),

        /// this is Desktop Screen
        desktop: _buildDesktopScreenLayout(),
      ),
    );
  }

  Widget _buildDesktopScreenLayout() {
    return Scaffold(
        body: Row(
          children: [
            NavManu(),
            Expanded(
                child: Center(
              child: Text(
                'Form Desktop',
              ),
            ))
          ],
        ),
      );
  }

  Widget _buildTabletScreenLayout() {
    return Scaffold(
        body: Center(
          child: Text("This is Tablet Screen"),
        ),
      );
  }

  Widget _buildMobileScreenLayout() {
    return Scaffold(
        body: Center(
          child: Text("This is Mobile Screen"),
        ),
      );
  }
}


