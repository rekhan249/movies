import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselSilderWigdet extends StatelessWidget {
  final List images;
  const CarouselSilderWigdet({
    Key? key,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images
          .map(
            (e) => Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Image.network(
                      e,
                      width: double.infinity.w,
                      height: 250.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    height: 250.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        gradient: LinearGradient(colors: [
                          Colors.green.shade400.withOpacity(0.3),
                          Colors.blue.shade400.withOpacity(0.4)
                        ])),
                  ),
                ),
                Positioned(
                  bottom: 16.h,
                  left: 10.w,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                    ),
                    child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "TITLE",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ],
            ),
          )
          .toList(),
      options: CarouselOptions(
          height: 215.h, autoPlay: true, enlargeCenterPage: true),
    );
  }
}
