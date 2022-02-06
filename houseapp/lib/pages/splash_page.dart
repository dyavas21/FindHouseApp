import 'package:flutter/material.dart';
import 'package:houseapp/theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/building_splash.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/logo_splash.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Find Cozy House\nto Stay and Happy',
                      style: blackTestStyle.copyWith(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                      style: greyTestStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 210,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: purpleColor,
                      ),
                      child: Center(
                        child: Text(
                          'Explore Now',
                          style: whiteTestStyle.copyWith(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
