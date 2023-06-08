// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class ImageSlider extends StatelessWidget {
//   final List<SlideItem> slideItems;

//   const ImageSlider({required this.slideItems});

//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider(
//       options: CarouselOptions(
//         height: double.infinity,
//         autoPlay: true,
//         enlargeCenterPage: true,
//       ),
//       items: slideItems.map((slide) {
//         return Builder(
//           builder: (BuildContext context) {
//             return Container(
//               width: MediaQuery.of(context).size.width,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(slide.imagePath),
//                   SizedBox(height: 16.0),
//                   Text(slide.text),
//                 ],
//               ),
//             );
//           },
//         );
//       }).toList(),
//     );
//   }
// }

// class SlideItem {
//   final String imagePath;
//   final String text;

//   SlideItem({required this.imagePath, required this.text});
// }
