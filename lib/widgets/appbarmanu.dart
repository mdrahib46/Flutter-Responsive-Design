import 'package:flutter/material.dart';
import '../Utils/textUtils.dart';



class AppBarManu extends StatelessWidget {
  const AppBarManu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(onPressed: (){}, child: Text(TextUtils.drawerText1, style: Theme.of(context).textTheme.titleMedium,),),
        TextButton(onPressed: (){}, child: Text(TextUtils.drawerText2, style: Theme.of(context).textTheme.titleMedium,),),
      ],);
  }
}