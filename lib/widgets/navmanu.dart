import 'package:flutter/material.dart';

class NavManu extends StatelessWidget {
  const NavManu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
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
    );
  }
}