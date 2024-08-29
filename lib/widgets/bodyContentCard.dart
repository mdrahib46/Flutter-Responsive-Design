import 'package:flutter/material.dart';

import '../Utils/textUtils.dart';

class BodyContentCard extends StatelessWidget {
  const BodyContentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40,),
          Text(TextUtils.bodyTitleText1, style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),),
          Text(TextUtils.bodyTitleText2, style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),),
          Text(TextUtils.bodyDecText),
        ],
      ),
    );
  }
}


