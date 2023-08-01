import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProPlan extends StatelessWidget {
  const ProPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text('Ultra Premium',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35.sp,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 15.h),
              Row(
                children: [
                  const Icon(Icons.arrow_circle_right_rounded),
                  SizedBox(width: 05.w),
                  Text('7 Users',
                      style: TextStyle(color: Colors.black, fontSize: 17.sp)),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  const Icon(Icons.arrow_circle_right_rounded),
                  SizedBox(width: 05.w),
                  Text('Unlimited Access',
                      style: TextStyle(color: Colors.black, fontSize: 17.sp)),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  const Icon(Icons.arrow_circle_right_rounded),
                  SizedBox(width: 05.w),
                  Text('Best Quality (720, 1080, 2K)',
                      style: TextStyle(color: Colors.black, fontSize: 17.sp)),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  const Icon(Icons.arrow_circle_right_rounded),
                  SizedBox(width: 05.w),
                  Text('Unlimited Downloads',
                      style: TextStyle(color: Colors.black, fontSize: 17.sp)),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  const Icon(Icons.arrow_circle_right_rounded),
                  SizedBox(width: 05.w),
                  Text('Cancel Anytime',
                      style: TextStyle(color: Colors.black, fontSize: 17.sp)),
                ],
              ),
              SizedBox(height: 20.h),
              SizedBox(
                  height: 45.h,
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                      child: Text('Pay Now Rs.1000',
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))))
            ],
          ),
        ),
      ),
    );
  }
}
