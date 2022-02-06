import 'package:flutter/material.dart';
import 'package:houseapp/theme.dart';

class TipsCard extends StatelessWidget {
  String? imageUrl;
  String? title;
  String? desc;

  TipsCard({
    this.desc,
    this.imageUrl,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            child: Image.asset(
              imageUrl!,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: blackTestStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  desc!,
                  style: greyTestStyle,
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            size: 24,
            color: greyColor,
          ),
        ],
      ),
    );
  }
}
