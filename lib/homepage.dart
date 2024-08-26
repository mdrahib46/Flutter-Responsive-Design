import 'package:flutter/material.dart';
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

    return ResponsiveBuilder(mobile: Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Design'),
      ),
      drawer: const Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                title: Text('Home'),
              ),
              ListTile(
                title: Text('Products'),
              ),
              ListTile(
                title: Text('Bills'),
              ),
            ],
          ),
        ),
      ),
      body: const ResponsiveBuilder(
        mobile: Center(
          child: Text(
            'This is Mobile Screen',
          ),
        ),
        tablet: Center(
          child: Text(
            'This is Tablet Screen',
          ),
        ),
        desktop: Center(
          child: Text(
            'This is Desktop Screen',
          ),
        ),
      ),
    ), desktop: Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Design'),
      ),
      body: Row(
        children: [
          const Drawer(
            child: SafeArea(
              child: Column(
                children: [
                  ListTile(
                    title: Text('Home'),
                  ),
                  ListTile(
                    title: Text('Products'),
                  ),
                  ListTile(
                    title: Text('Bills'),
                  ),
                ],
              ),
            ),
          ),
           Expanded(child: Center(child: Text('Form Desktop',),))
        ],
      ),
    ));
  }
}
