import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscribedUsers extends StatefulWidget {
  static const String nameRoute = '/view-sub-users';
  const SubscribedUsers({super.key});

  @override
  State<SubscribedUsers> createState() => _SubscribedUsersState();
}

class _SubscribedUsersState extends State<SubscribedUsers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text(
              'Subscribed Users View',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
            )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 05.h),
            Center(
              child: Text('All subscribed users details',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 05.h),
            Container(
              height: 460.h,
              width: 340.w,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(20.r))),
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100.h,
                        width: 350.w,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r))),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
