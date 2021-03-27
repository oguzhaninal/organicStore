import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeCategoryOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: s.height * .015),
        child: ListView(
          children: [
            CarouselSlider(
                items: [
                  sliderItem(
                    AssetImage("assets/images/sliderOne.jpg"),
                  ),
                  sliderItem(
                    AssetImage("assets/images/sliderTwo.jpg"),
                  ),
                  sliderItem(
                    AssetImage("assets/images/sliderThree.jpg"),
                  ),
                  sliderItem(
                    AssetImage("assets/images/sliderFour.jpg"),
                  ),
                ],
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  aspectRatio: 4 / 3,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  height: s.height * .23,
                  viewportFraction: .8,
                ))
          ],
        ),
      ),
    );
  }

  sliderItem(AssetImage assetImage) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(fit: BoxFit.cover, image: assetImage),
      ),
    );
  }
}
