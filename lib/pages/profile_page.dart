import 'package:dart_flex/pages/about_me_page.dart';
import 'package:dart_flex/provider/marquee_text_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marquee/marquee.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  static const String nameRoute = '/profile-page';
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void dispose() {
    Provider.of<MarqueeTextProvider>(context, listen: false).timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<MarqueeTextProvider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Profile',
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AboutMePage.nameRoute);
              },
              icon: const Icon(Icons.settings, color: Colors.white))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Center(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(60.r)),
                        color: Colors.white),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(radius: 40.r)))),
            SizedBox(height: 20.h),
            Center(
              child: Text('edde',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20.sp)),
            ),
            SizedBox(height: 20.h),
            Center(
              child: Text('No. of movies watched',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16.h)),
            ),
            Center(
              child: Text('2',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16.sp)),
            ),
            SizedBox(height: 25.h),
            Center(
                child: Container(
              width: 200.w,
              height: 30.h,
              decoration: const BoxDecoration(
                  color: Colors
                      .transparent), // Set the width as per your requirement
              child: Consumer<MarqueeTextProvider>(
                builder: (context, mTp, child) => Marquee(
                  text: 'Number of movies recommendations based on ML',
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white), // Customize the text style
                  scrollAxis: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  blankSpace: 20.0, // Space between each repetition
                  velocity: mTp.isForward
                      ? 30.0
                      : -30, // Speed of the marquee (pixels per second)
                  pauseAfterRound:
                      const Duration(seconds: 1), // Pause after each round
                  startPadding: 10.0, // Initial padding
                  accelerationDuration:
                      const Duration(seconds: 1), // Time for acceleration
                  accelerationCurve: Curves.linear, // Acceleration curve
                  decelerationDuration: const Duration(
                      milliseconds: 500), // Time for deceleration
                  decelerationCurve: Curves.easeOut, // Deceleration curve
                ),
              ),
            )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 90.w),
              child: Text('No data till now',
                  style: TextStyle(color: Colors.white, fontSize: 18.sp)),
            ),
            SizedBox(height: 25.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text('Preferred Genres',
                    style: TextStyle(color: Colors.white, fontSize: 20.sp))),
            SizedBox(height: 25.h),
            Center(
              child: Container(
                height: 40.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(30.r))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(children: [
                    Image.asset('assets/images/premium.png',
                        height: 40.h, width: 20.w),
                    SizedBox(width: 5.w),
                    const Text('English', style: TextStyle(color: Colors.white))
                  ]),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text('Preferred Genres',
                    style: TextStyle(color: Colors.white, fontSize: 20.sp))),
            SizedBox(height: 25.h),
            Center(
              child: Container(
                  height: 40.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(30.r))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(children: [
                      Image.asset('assets/images/premium.png',
                          height: 40.h, width: 20.w),
                      SizedBox(width: 5.w),
                      const Text('English',
                          style: TextStyle(color: Colors.white))
                    ]),
                  )),
            ),
            SizedBox(height: 15.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text('Watching History',
                    style: TextStyle(color: Colors.white, fontSize: 20.sp))),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
              child: Container(
                  height: 160.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 05,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 150.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.r))),
                        ),
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
