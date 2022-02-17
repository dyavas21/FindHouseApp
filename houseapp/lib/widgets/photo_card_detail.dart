import 'package:flutter/material.dart';

class PhotoCardDetail extends StatelessWidget {
  String? imageUrl;

  PhotoCardDetail({
    this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 88,
      margin: EdgeInsets.only(
        right: 18,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(
        imageUrl!,
      ),
    );
  }
}
