import 'package:flutter/material.dart';
import 'package:houseapp/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  String? imageUrl;
  bool? isActive;

  BottomNavbarItem({
    this.imageUrl,
    this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imageUrl!,
          width: 26,
        ),
        Spacer(),
        isActive!
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(
                      1000,
                    ),
                  ),
                  color: purpleColor,
                ),
              )
            : Container(),
      ],
    );
  }
}
