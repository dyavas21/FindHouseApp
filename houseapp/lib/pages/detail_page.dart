import 'package:flutter/material.dart';
import 'package:houseapp/theme.dart';

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
            Padding(
              padding: const EdgeInsets.only(top: 328),
              child: Container(
                padding: EdgeInsets.only(
                  left: 24,
                  top: 30,
                  bottom: 40,
                ),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    title(),
                  ],
                ),
              ),
            )
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
                    text: '/ month',
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

  Widget Facilities() {
    return Column(
      children: [],
    );
  }
}
