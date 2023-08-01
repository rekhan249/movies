import 'package:dart_flex/widgets/subcribtion_widgets/basic_plan.dart';
import 'package:dart_flex/widgets/subcribtion_widgets/pro_plan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class PremiumSubsribtion extends StatefulWidget {
  static const String nameRoute = '/premium-sub';
  const PremiumSubsribtion({super.key});

  @override
  State<PremiumSubsribtion> createState() => _PremiumSubsribtionState();
}

class _PremiumSubsribtionState extends State<PremiumSubsribtion> {
  PageController pagesController = PageController();
  List<Widget> pages = const [BasicPlan(), ProPlan()];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text('Premium',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold))),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Center(
                  child: Container(
                color: Colors.transparent,
                height: 160.h,
                child: Lottie.asset(
                  'assets/images/animation.json',
                  animate: true,
                ),
              )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
                child: Container(
                  height: 350.h,
                  color: Colors.transparent,
                  child: PageView.builder(
                      controller: pagesController,
                      onPageChanged: (value) => setState(() {
                            selectedIndex = value;
                          }),
                      itemCount: pages.length,
                      itemBuilder: (context, index) => pages[index]),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: SizedBox(
                  height: 40.h,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
