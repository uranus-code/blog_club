import 'package:blog_club/models/category.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CategorySlider extends StatelessWidget {
  const CategorySlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: CarouselSlider.builder(
        itemCount: categories.length,
        itemBuilder: (context, index, realIndex) => Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(categories[index].imageFileName),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 30,
              child: Text(
                categories[index].title,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.white,
                    ),
              ),
            )
          ],
        ),
        options: CarouselOptions(
          scrollDirection: Axis.horizontal,
          aspectRatio: 1.2,
          viewportFraction: 0.8,
          padEnds: true,
          initialPage: 0,
          enlargeStrategy: CenterPageEnlargeStrategy.scale,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          disableCenter: true,
        ),
      ),
    );
  }
}
