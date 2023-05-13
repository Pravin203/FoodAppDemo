import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

/// slider images
class _SliderScreenState extends State<SliderScreen> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/burger.png'},
    {"id": 2, "image_path": 'assets/images/burger.png'},
    {"id": 3, "image_path": 'assets/images/burger.png'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      InkWell(
        onTap: () {},
        child: CarouselSlider(
          items: imageList
              .map(
                (item) => ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                item['image_path'],
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200, // Adjust the height as needed
              ),
            ),
          )
              .toList(),
          carouselController: carouselController,
          options: CarouselOptions(
            scrollPhysics: const BouncingScrollPhysics(),
            autoPlay: true,
            aspectRatio: 2,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imageList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => carouselController.animateToPage(entry.key),
            child: Container(

              width: currentIndex == entry.key ? 17 : 7,
              height: 7.0,
              margin: const EdgeInsets.symmetric(
                horizontal: 3.0,vertical: 5
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: currentIndex == entry.key
                    ? const Color(0xffF70A15)
                    : const Color(0xFF1178B2),
              ),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
