import 'package:flutter/material.dart';
import 'package:responsivedesign/Utils/textUtils.dart';

class AppBarTitleText extends StatelessWidget {
  const AppBarTitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
         TextUtils.appbarTitleText1,
          style: Theme.of(context).textTheme.titleMedium
        ),
        Text(
          TextUtils.appbarTitleText2,
          style: Theme.of(context).textTheme.titleMedium
        ),
      ],
    );
  }
}
