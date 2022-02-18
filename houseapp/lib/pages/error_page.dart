import 'package:flutter/material.dart';
import 'package:houseapp/pages/home_page.dart';
import 'package:houseapp/theme.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/error.png',
              width: 300,
              height: 85,
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              'Where are you going?',
              style: blackTestStyle.copyWith(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'Seems like the page that you were\nrequested is already gone',
              style: greyTestStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Container(
                width: 210,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: purpleColor,
                ),
                child: Center(
                  child: Text(
                    'Back to Home',
                    style: whiteTestStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
