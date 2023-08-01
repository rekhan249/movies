import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManagerUser extends StatefulWidget {
  static const String nameRoute = '/manage-user';
  const ManagerUser({super.key});

  @override
  State<ManagerUser> createState() => _ManagerUserState();
}

class _ManagerUserState extends State<ManagerUser> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text('Manager',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold))),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            Center(
              child: Text('Enter movie photo here',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 10.h),
            Center(
              child: Container(
                height: 200.h,
                width: 300.w,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(20.r))),
                child: Image.asset('assets/images/premium.png'),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 70.w),
                child: SizedBox(
                    height: 45.h,
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red)),
                        child: Text('Block this User',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))))),
          ],
        ),
      ),
    );
  }
}
