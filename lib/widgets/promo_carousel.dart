import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PromoCarousel extends StatelessWidget {
  final List<String> promoBanners = [
    'https://via.placeholder.com/400x150.png?text=Promo+1',
    'https://via.placeholder.com/400x150.png?text=Promo+2',
    'https://via.placeholder.com/400x150.png?text=Promo+3',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150.0,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: promoBanners.map((banner) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(banner),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}