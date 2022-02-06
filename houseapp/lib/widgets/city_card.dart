import 'package:flutter/material.dart';
import 'package:houseapp/theme.dart';

class CityCard extends StatelessWidget {
  String? imageUrl;
  String? title;
  int? id;
  bool? isPopular;

  CityCard({
    this.imageUrl,
    this.title,
    this.id,
    this.isPopular,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: whiteGreyColor,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  imageUrl!,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                isPopular!
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(35),
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/icon_star.png',
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              title!,
              style: blackTestStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
