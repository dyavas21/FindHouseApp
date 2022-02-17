import 'package:flutter/material.dart';
import 'package:houseapp/theme.dart';
import 'package:houseapp/widgets/facilities_card.dart';
import 'package:houseapp/widgets/photo_card_detail.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/thumbnail.png',
              height: 350,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/btn_wishlist.png',
                    width: 40,
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 24,
                    top: 30,
                    bottom: 40,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      title(),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Main Facilities',
                        style: blackTestStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FacilitiesCard(
                            imageUrl: 'assets/icon_kitchen.png',
                            title: ' Kitchen',
                            number: '2',
                          ),
                          Spacer(),
                          FacilitiesCard(
                            imageUrl: 'assets/icon_bedroom.png',
                            title: ' Bedroom',
                            number: '2',
                          ),
                          Spacer(),
                          FacilitiesCard(
                            imageUrl: 'assets/icon_cupboard.png',
                            title: ' Big Lemari',
                            number: '2',
                          ),
                          SizedBox(
                            width: 24,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Photos',
                        style: blackTestStyle.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Slider(),
                      SizedBox(
                        height: 30,
                      ),
                      Location(),
                      SizedBox(
                        height: 40,
                      ),
                      Button(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget title() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kuretakeso Hott',
              style: blackTestStyle.copyWith(
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            RichText(
              text: TextSpan(
                text: '\$52',
                style: purpleTestStyle.copyWith(
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: ' / month',
                    style: greyTestStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(right: 24),
          child: Row(
            children: [
              Image.asset(
                'assets/icon_star.png',
                width: 20,
              ),
              SizedBox(
                width: 2,
              ),
              Image.asset(
                'assets/icon_star.png',
                width: 20,
              ),
              SizedBox(
                width: 2,
              ),
              Image.asset(
                'assets/icon_star.png',
                width: 20,
              ),
              SizedBox(
                width: 2,
              ),
              Image.asset(
                'assets/icon_star.png',
                width: 20,
              ),
              SizedBox(
                width: 2,
              ),
              Image.asset(
                'assets/icon_star.png',
                width: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget Slider() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PhotoCardDetail(
            imageUrl: 'assets/photo1.png',
          ),
          PhotoCardDetail(
            imageUrl: 'assets/photo2.png',
          ),
          PhotoCardDetail(
            imageUrl: 'assets/photo3.png',
          ),
          PhotoCardDetail(
            imageUrl: 'assets/photo1.png',
          ),
        ],
      ),
    );
  }

  Widget Location() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
          style: blackTestStyle.copyWith(
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jln. Kappan Sukses No. 20',
                  style: greyTestStyle,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Palembang',
                  style: greyTestStyle,
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Image.asset(
                'assets/btn_map.png',
                width: 40,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget Button() {
    return Container(
      margin: EdgeInsets.only(right: 24),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: purpleColor,
      ),
      child: Center(
        child: Text(
          'Book Now',
          style: whiteTestStyle.copyWith(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
