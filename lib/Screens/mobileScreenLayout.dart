import 'package:flutter/material.dart';

import '../Utils/textUtils.dart';
import '../widgets/appbarTitleTextCard.dart';
import '../widgets/customElevatedButton.dart';
import '../widgets/navmanu.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Align(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarTitleText(),
              ],
            ),
          ),
        ),
        drawer: const NavManu(),
        body:  Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // _getSummarySection(crossAxisCount: 1, ratio: 2.4),
                 Text(
                  TextUtils.bodyTitleText1,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                 Text(
                 TextUtils.bodyTitleText2,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(TextUtils.bodyDecText, textAlign: TextAlign.center,),
                ),
                const SizedBox(height: 50),
                CustomElevatedButton(size: size)
              ],
            ),
          ),
        )
    );
  }
}



