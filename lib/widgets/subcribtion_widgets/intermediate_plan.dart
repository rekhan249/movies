import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntermediatePlan extends StatelessWidget {
  const IntermediatePlan({super.key});

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
              Text('Intermediate Plan',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 33.sp,
                      fontWeight: FontWeight.bold)),
              Text('Family',
                  style: TextStyle(color: Colors.red, fontSize: 20.sp)),
              SizedBox(height: 15.h),
              Text('\$15',
                  style: TextStyle(color: Colors.black, fontSize: 25.sp)),
              SizedBox(height: 15.h),
              Row(
                children: [
                  const Icon(Icons.arrow_circle_right_rounded),
                  SizedBox(width: 05.w),
                  Text('7 User',
                      style: TextStyle(color: Colors.black, fontSize: 17.sp)),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  const Icon(Icons.arrow_circle_right_rounded),
                  SizedBox(width: 05.w),
                  Text('15 movies',
                      style: TextStyle(color: Colors.black, fontSize: 17.sp)),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  const Icon(Icons.arrow_circle_right_rounded),
                  SizedBox(width: 05.w),
                  Text('Resposibile Streaming',
                      style: TextStyle(color: Colors.black, fontSize: 17.sp)),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  const Icon(Icons.arrow_circle_right_rounded),
                  SizedBox(width: 05.w),
                  Text('For SSl',
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
                      child: Text('Subscribe Now',
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
