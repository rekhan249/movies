import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BasicPlan extends StatelessWidget {
  const BasicPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text('Basic Plan',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35.sp,
                      fontWeight: FontWeight.bold)),
              Text('For Personal',
                  style: TextStyle(color: Colors.red, fontSize: 20.sp)),
              SizedBox(height: 15.h),
              Row(
                children: [
                  const Icon(Icons.arrow_circle_right_rounded),
                  SizedBox(width: 05.w),
                  Text('1 User',
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
                  Text('Good Quality (ROP)',
                      style: TextStyle(color: Colors.black, fontSize: 17.sp)),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  const Icon(Icons.arrow_circle_right_rounded),
                  SizedBox(width: 05.w),
                  Text('Limited Downloads',
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
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      child: Text('Pay Now Rs.250',
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
