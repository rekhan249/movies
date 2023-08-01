import 'package:dart_flex/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutMePage extends StatelessWidget {
  static const String nameRoute = '/about-me';
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: true,
        leading: IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, ProfilePage.nameRoute);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text('About Me',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.sp)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 30.h),
          Center(
              child: Container(
                  height: 120.h,
                  width: 80.w,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Image.asset('assets/images/premium.png',
                      fit: BoxFit.fill))),
          SizedBox(height: 20.h),
          Center(
            child: Text('Mooviz',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp)),
          ),
          SizedBox(height: 30.h),
          Center(
            child: Text('Hi there MABUD here.',
                style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 14.sp)),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'I am a computer science student with a passion for building beautiful and functional applications.',
                style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 14.sp)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'I am a computer science student with a passion for building beautiful and functional applications.',
                style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 14.sp)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'I am a computer science student with a passion for building beautiful and functional applications.',
                style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 14.sp)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'I am a computer science student with a passion for building beautiful and functional applications.',
                style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 14.sp)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'I am a computer science student with a passion for building beautiful and functional applications.',
                style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 14.sp)),
          ),
        ],
      ),
    );
  }
}
