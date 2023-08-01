import 'package:dart_flex/constants/carousel_images.dart';
import 'package:dart_flex/widgets/carousel_movies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainHomePage extends StatefulWidget {
  static const String nameRoute = '/main-home';
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'MOOVIES',
            style: TextStyle(
                color: const Color.fromRGBO(244, 67, 54, 1),
                fontSize: 22.sp,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Container(
                width: 230.w,
                color: Colors.transparent,
                child: TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        hintText: 'search here',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                        suffixIcon: Icon(Icons.search, color: Colors.white)))),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CarouselSilderWigdet(images: images),
                SizedBox(
                    height: 30.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Top Movies of 2023',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        TextButton(
                            onPressed: () {},
                            child: Text('See More',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)))
                      ],
                    )),
                Container(
                  height: 150.h,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.w, vertical: 6.h),
                        child: Container(
                          width: 102.w,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          // child: Image.asset('assets/images/premium.png',
                          //     fit: BoxFit.fill),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 25.h),
                SizedBox(
                    height: 30.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Watchlist',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        TextButton(
                            onPressed: () {},
                            child: Text('See More',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)))
                      ],
                    )),
                Container(
                  height: 150.h,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.w, vertical: 6.h),
                        child: Container(
                          width: 102.w,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          // child: Image.asset('assets/images/premium.png',
                          //     fit: BoxFit.fill),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                    height: 30.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Top Rated',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        TextButton(
                            onPressed: () {},
                            child: Text('See More',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)))
                      ],
                    )),
                Container(
                  height: 150.h,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.w, vertical: 6.h),
                        child: Container(
                          width: 102.w,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          // child: Image.asset('assets/images/premium.png',
                          //     fit: BoxFit.fill),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                    height: 30.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Adventure',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        TextButton(
                            onPressed: () {},
                            child: Text('See More',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)))
                      ],
                    )),
                Container(
                  height: 150.h,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.w, vertical: 6.h),
                        child: Container(
                          width: 102.w,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          // child: Image.asset('assets/images/premium.png',
                          //     fit: BoxFit.fill),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                    height: 30.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('English',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        TextButton(
                            onPressed: () {},
                            child: Text('See More',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)))
                      ],
                    )),
                Container(
                  height: 150.h,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.w, vertical: 6.h),
                        child: Container(
                          width: 102.w,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r))),
                          // child: Image.asset('assets/images/premium.png',
                          //     fit: BoxFit.fill),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
