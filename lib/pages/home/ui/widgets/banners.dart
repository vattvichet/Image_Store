import 'package:ecommerce/core/utils/dimesions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Banners extends StatelessWidget {
  Banners({super.key});
  final List<String> banners = [
    'assets/images/6.jpg',
    'assets/images/9.jpg',
    'assets/images/6.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Trending",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: Dimensions.height10),
          height: Dimensions.carousel * 1.25,
          child: ListView.separated(
            separatorBuilder: (_, __) => SizedBox(
              width: Dimensions.width15 * 1.15,
            ),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Dimensions.radius8 * 1.5),
                  child: Image.asset(
                    banners[index],
                    height: Dimensions.bannerHeight,
                    width: Dimensions.bannerWidth,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
