import 'package:flutter/material.dart';
import 'package:responsivedesign/Screens/tabletScreenLayout.dart';
import 'package:responsivedesign/widgets/appbarTitleTextCard.dart';
import 'package:responsivedesign/widgets/appbarmanu.dart';
import 'package:responsivedesign/widgets/responsive_builder.dart';
import 'Screens/mobileScreenLayout.dart';
import 'Utils/textUtils.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;

    return ResponsiveBuilder(

        /// Mobile Screen Builder
        mobile: MobileScreenLayout(size: size),

        tablet: TabletScreenLayout(size: size),
        desktop: _buildDesktopLayout());
  }

/// Desktop  Scree Builder
  Widget _buildDesktopLayout() {
    return  Scaffold(
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
        body:   _getDesktopSummarySection()
        );
  }


  Widget _homePageTextSummaryCard(){
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TextUtils.bodyTitleText1, style: Theme.of(context).textTheme.titleLarge,),
          Text(TextUtils.bodyTitleText2,style: Theme.of(context).textTheme.titleLarge,),
          const SizedBox(height: 16,),
          Text(TextUtils.bodyDecText, style: Theme.of(context).textTheme.bodyMedium,)
        ],
      ),
    );
  }
  Widget _homePageButtonCard(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0),
        child: SizedBox(
        height: 40,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )),
          child: const Text(
            'data',
            style: TextStyle(color: Colors.white),
          ),
        ),
            ),
      )

      ],
    );
  }

  Widget _getDesktopSummarySection(){
    return GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),children: [
      _homePageTextSummaryCard(),
      _homePageButtonCard()
    ],);
  }






}














