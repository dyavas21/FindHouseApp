import 'package:flutter/material.dart';

import '../theme.dart';

class FacilitiesCard extends StatelessWidget {
  String? imageUrl;
  String? number;
  String? title;

  FacilitiesCard({
    this.imageUrl,
    this.number,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imageUrl!,
                  width: 32,
                ),
                SizedBox(
                  height: 8,
                ),
                RichText(
                  text: TextSpan(
                    text: number!,
                    style: purpleTestStyle,
                    children: [
                      TextSpan(text: title!, style: greyTestStyle),
                    ],
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
