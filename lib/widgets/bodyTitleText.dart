import 'package:flutter/material.dart';
import 'package:responsivedesign/Utils/textUtils.dart';


class BodyTitleText extends StatelessWidget {
  const BodyTitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildSingleSection(
             TextUtils.bodyTitleText1,
          ),
          _buildSingleSection(
            TextUtils.bodyTitleText2,
          ),
        ],
      ),
    );
  }

  Widget _buildSingleSection(String title,) {
    return Column(
          children: [
            Text(title,  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),

          ],
        );
  }
}