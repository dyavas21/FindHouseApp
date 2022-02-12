import 'package:flutter/material.dart';
import 'package:houseapp/pages/detail_page.dart';
import 'package:houseapp/theme.dart';

class SpaceContainer extends StatelessWidget {
  String? imageUrl;
  String? star;
  String? title;
  String? price;
  String? location;

  SpaceContainer({
    this.imageUrl,
    this.location,
    this.price,
    this.star,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.asset(
                    imageUrl!,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icon_star.png',
                            width: 18,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            star!,
                            style: whiteTestStyle.copyWith(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
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
                  height: 2,
                ),
                Row(
                  children: [
                    Text(
                      price!,
                      style: purpleTestStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '/ month',
                      style: greyTestStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  location!,
                  style: greyTestStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
