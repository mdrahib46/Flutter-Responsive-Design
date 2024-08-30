import 'package:flutter/material.dart';
import 'package:responsivedesign/widgets/customElevatedButton.dart';
import '../Utils/textUtils.dart';
import '../widgets/appbarTitleTextCard.dart';
import '../widgets/appbarmanu.dart';

class TabletScreenLayout extends StatelessWidget {
  const TabletScreenLayout({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 40,
          title: const Row(
            children: [
              AppBarTitleText(),
              Spacer(),
              AppBarManu(),
            ],
          ),
        ),
        body: Center(
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
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    TextUtils.bodyDecText,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 50),
                CustomElevatedButton(size: size),
              ],
            ),
          ),
        ));
  }
}
