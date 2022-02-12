import 'package:flutter/material.dart';
import 'package:houseapp/theme.dart';
import 'package:houseapp/widgets/bottom_navbar_item.dart';
import 'package:houseapp/widgets/city_card.dart';
import 'package:houseapp/widgets/space_container.dart';
import 'package:houseapp/widgets/tips_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
            ),
            child: ListView(
              children: [
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Explore Now',
                  style: blackTestStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Mencari kosan yang cozy',
                  style: greyTestStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Popular Cities',
                  style: blackTestStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CityCard(
                        imageUrl: 'assets/city1.png',
                        title: 'Jakarta',
                        id: 1,
                        isPopular: false,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CityCard(
                        imageUrl: 'assets/city2.png',
                        title: 'Bandung',
                        id: 2,
                        isPopular: true,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CityCard(
                        imageUrl: 'assets/city3.png',
                        title: 'Surabaya',
                        id: 3,
                        isPopular: false,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CityCard(
                        imageUrl: 'assets/city1.png',
                        title: 'Jakarta',
                        id: 4,
                        isPopular: false,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Recommended Space',
                  style: blackTestStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SpaceContainer(
                      imageUrl: 'assets/space1.png',
                      star: '4/5',
                      title: 'Kuretakeso Hott',
                      price: '\$52',
                      location: 'Bandung, Germany',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceContainer(
                      imageUrl: 'assets/space2.png',
                      star: '5/5',
                      title: 'Roemah Nenek',
                      price: '\$11',
                      location: 'Seattle, Bogor',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceContainer(
                      imageUrl: 'assets/space3.png',
                      star: '3/5',
                      title: 'Darrling How',
                      price: '\$20',
                      location: 'Jakarta, Indonesia',
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Tips & Guidance',
                  style: blackTestStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    TipsCard(
                      imageUrl: 'assets/tips1.png',
                      title: 'City Guidelines',
                      desc: 'Updated 20 Apr',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TipsCard(
                      imageUrl: 'assets/tips2.png',
                      title: 'Jakarta Fairship',
                      desc: 'Updated 11 Dec',
                    ),
                  ],
                ),
                SizedBox(
                  height: 74,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          padding: EdgeInsets.only(
            top: 19,
            left: 30,
            right: 30,
          ),
          height: 65,
          width: MediaQuery.of(context).size.width - (2 * 24),
          margin: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            color: whiteGreyColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavbarItem(
                imageUrl: 'assets/home_color.png',
                isActive: true,
              ),
              BottomNavbarItem(
                imageUrl: 'assets/mail.png',
                isActive: false,
              ),
              BottomNavbarItem(
                imageUrl: 'assets/card.png',
                isActive: false,
              ),
              BottomNavbarItem(
                imageUrl: 'assets/love.png',
                isActive: false,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
