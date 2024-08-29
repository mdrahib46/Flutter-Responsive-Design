import 'package:flutter/material.dart';
import 'package:responsivedesign/Utils/textUtils.dart';

class NavManu extends StatelessWidget {
  const NavManu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return   Drawer(
      child: Column(
        children: [
          DrawerHeader(child: Text('data')),
          ListTile(
            leading: Icon(Icons.movie_creation_outlined),
            title: Text(TextUtils.drawerText1),
          ),
          ListTile(
            leading: Icon(Icons.feedback_outlined),
            title: Text(TextUtils.drawerText2),
          ),

        ],
      ),
    );
  }
}