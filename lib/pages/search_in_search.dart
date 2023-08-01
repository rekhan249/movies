import 'package:dart_flex/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchInSearch extends StatefulWidget {
  static const String nameRoute = '/search-in';
  final int index;
  final String name;

  const SearchInSearch({super.key, required this.index, required this.name});

  @override
  State<SearchInSearch> createState() => _SearchInSearchState();
}

class _SearchInSearchState extends State<SearchInSearch> {
  @override
  Widget build(BuildContext context) {
    if (widget.index == 0) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, SearchPage.nameRoute);
              },
              icon: const Icon(Icons.arrow_back, color: Colors.white)),
          title: Text(widget.name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold)),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 05, right: 05, top: 08),
                    child: Container(
                      height: 140.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.h, horizontal: 05.w),
                            child: Image.asset('assets/images/premium.png',
                                height: 120.h, width: 100.w),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                'The Flash',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_rate,
                                          color: Colors.white, size: 20.spMax)),
                                  SizedBox(width: 02.w),
                                  Text('6.9',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp)),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10.w),
                                child: Text('Released:',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16.sp)),
                              ),
                              SizedBox(height: 05.h),
                              Container(
                                height: 40.h,
                                width: 200.w,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 40.h,
                                          width: 70.w,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r))),
                                          child: Center(
                                            child: Text('Action',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.sp)),
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )),
      );
    }
    if (widget.index == 1) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, SearchPage.nameRoute);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white)),
            title: Text(widget.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold))),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 05, right: 05, top: 08),
                    child: Container(
                      height: 140.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.h, horizontal: 10.w),
                            child: Image.asset('assets/images/premium.png',
                                height: 120.h, width: 100.w),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                'The Flash',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_rate,
                                          color: Colors.white, size: 20.spMax)),
                                  SizedBox(width: 02.w),
                                  Text('6.9',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp)),
                                ],
                              ),
                              Text('Released: ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.sp)),
                              SizedBox(height: 05.h),
                              Container(
                                height: 40.h,
                                width: 200.w,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 40.h,
                                          width: 70.w,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r))),
                                          child: Center(
                                            child: Text('Action',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.sp)),
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )),
      );
    }
    if (widget.index == 2) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, SearchPage.nameRoute);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white)),
            title: Text(widget.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold))),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 05, right: 05, top: 08),
                    child: Container(
                      height: 140.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.h, horizontal: 10.w),
                            child: Image.asset('assets/images/premium.png',
                                height: 120.h, width: 100.w),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                'The Flash',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_rate,
                                          color: Colors.white, size: 20.spMax)),
                                  SizedBox(width: 02.w),
                                  Text('6.9',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp)),
                                ],
                              ),
                              Text('Released:  ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.sp)),
                              SizedBox(height: 05.h),
                              Container(
                                height: 40.h,
                                width: 200.w,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 40.h,
                                          width: 70.w,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r))),
                                          child: Center(
                                            child: Text('Action',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.sp)),
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )),
      );
    }
    if (widget.index == 3) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, SearchPage.nameRoute);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white)),
            title: Text(widget.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold))),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 05, right: 05, top: 08),
                    child: Container(
                      height: 140.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.h, horizontal: 10.w),
                            child: Image.asset('assets/images/premium.png',
                                height: 120.h, width: 100.w),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                'The Flash',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_rate,
                                          color: Colors.white, size: 20.spMax)),
                                  SizedBox(width: 02.w),
                                  Text('6.9',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp)),
                                ],
                              ),
                              Text('Released:  ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.sp)),
                              SizedBox(height: 05.h),
                              Container(
                                height: 40.h,
                                width: 200.w,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 40.h,
                                          width: 70.w,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r))),
                                          child: Center(
                                            child: Text('Action',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.sp)),
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )),
      );
    }
    if (widget.index == 4) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, SearchPage.nameRoute);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white)),
            title: Text(widget.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold))),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 05, right: 05, top: 08),
                    child: Container(
                      height: 140.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.h, horizontal: 10.w),
                            child: Image.asset('assets/images/premium.png',
                                height: 120.h, width: 100.w),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                'The Flash',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_rate,
                                          color: Colors.white, size: 20.spMax)),
                                  SizedBox(width: 02.w),
                                  Text('6.9',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp)),
                                ],
                              ),
                              Text('Released:  ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.sp)),
                              SizedBox(height: 05.h),
                              Container(
                                height: 40.h,
                                width: 200.w,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 40.h,
                                          width: 70.w,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r))),
                                          child: Center(
                                            child: Text('Action',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.sp)),
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )),
      );
    }
    if (widget.index == 5) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, SearchPage.nameRoute);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white)),
            title: Text(widget.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold))),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 05, right: 05, top: 08),
                    child: Container(
                      height: 140.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.h, horizontal: 10.w),
                            child: Image.asset('assets/images/premium.png',
                                height: 120.h, width: 100.w),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                'The Flash',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_rate,
                                          color: Colors.white, size: 20.spMax)),
                                  SizedBox(width: 02.w),
                                  Text('6.9',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp)),
                                ],
                              ),
                              Text('Released:  ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.sp)),
                              SizedBox(height: 05.h),
                              Container(
                                height: 40.h,
                                width: 200.w,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 40.h,
                                          width: 70.w,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r))),
                                          child: Center(
                                            child: Text('Action',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.sp)),
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )),
      );
    }
    if (widget.index == 6) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, SearchPage.nameRoute);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white)),
            title: Text(widget.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold))),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 05, right: 05, top: 08),
                    child: Container(
                      height: 140.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.h, horizontal: 10.w),
                            child: Image.asset('assets/images/premium.png',
                                height: 120.h, width: 100.w),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                'The Flash',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_rate,
                                          color: Colors.white, size: 20.spMax)),
                                  SizedBox(width: 02.w),
                                  Text('6.9',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp)),
                                ],
                              ),
                              Text('Released:  ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.sp)),
                              SizedBox(height: 05.h),
                              Container(
                                height: 40.h,
                                width: 200.w,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 40.h,
                                          width: 70.w,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r))),
                                          child: Center(
                                            child: Text('Action',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.sp)),
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )),
      );
    }
    if (widget.index == 7) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, SearchPage.nameRoute);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white)),
            title: Text(widget.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold))),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 05, right: 05, top: 08),
                    child: Container(
                      height: 140.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.h, horizontal: 10.w),
                            child: Image.asset('assets/images/premium.png',
                                height: 120.h, width: 100.w),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                'The Flash',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_rate,
                                          color: Colors.white, size: 20.spMax)),
                                  SizedBox(width: 02.w),
                                  Text('6.9',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp)),
                                ],
                              ),
                              Text('Released:  ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.sp)),
                              SizedBox(height: 05.h),
                              Container(
                                height: 40.h,
                                width: 200.w,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 40.h,
                                          width: 70.w,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r))),
                                          child: Center(
                                            child: Text('Action',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.sp)),
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )),
      );
    }
    if (widget.index == 8) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, SearchPage.nameRoute);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white)),
            title: Text(widget.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold))),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 05, right: 05, top: 08),
                    child: Container(
                      height: 140.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.h, horizontal: 10.w),
                            child: Image.asset('assets/images/premium.png',
                                height: 120.h, width: 100.w),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                'The Flash',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_rate,
                                          color: Colors.white, size: 20.spMax)),
                                  SizedBox(width: 02.w),
                                  Text('6.9',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp)),
                                ],
                              ),
                              Text('Released:  ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.sp)),
                              SizedBox(height: 05.h),
                              Container(
                                height: 40.h,
                                width: 200.w,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 40.h,
                                          width: 70.w,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r))),
                                          child: Center(
                                            child: Text('Action',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.sp)),
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )),
      );
    }
    if (widget.index == 9) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, SearchPage.nameRoute);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white)),
            title: Text(widget.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold))),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 05, right: 05, top: 08),
                    child: Container(
                      height: 140.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.h, horizontal: 10.w),
                            child: Image.asset('assets/images/premium.png',
                                height: 120.h, width: 100.w),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                'The Flash',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_rate,
                                          color: Colors.white, size: 20.spMax)),
                                  SizedBox(width: 02.w),
                                  Text('6.9',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp)),
                                ],
                              ),
                              Text('Released:  ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.sp)),
                              SizedBox(height: 05.h),
                              Container(
                                height: 40.h,
                                width: 200.w,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 40.h,
                                          width: 70.w,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r))),
                                          child: Center(
                                            child: Text('Action',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.sp)),
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )),
      );
    }
    if (widget.index == 10) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, SearchPage.nameRoute);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white)),
            title: Text(widget.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold))),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 05, right: 05, top: 08),
                    child: Container(
                      height: 140.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.h, horizontal: 10.w),
                            child: Image.asset('assets/images/premium.png',
                                height: 120.h, width: 100.w),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                'The Flash',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_rate,
                                          color: Colors.white, size: 20.spMax)),
                                  SizedBox(width: 02.w),
                                  Text('6.9',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp)),
                                ],
                              ),
                              Text('Released:  ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.sp)),
                              SizedBox(height: 05.h),
                              Container(
                                height: 40.h,
                                width: 200.w,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 40.h,
                                          width: 70.w,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r))),
                                          child: Center(
                                            child: Text('Action',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.sp)),
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )),
      );
    }
    if (widget.index == 11) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, SearchPage.nameRoute);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white)),
            title: Text(widget.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold))),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 05, right: 05, top: 08),
                    child: Container(
                      height: 140.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.h, horizontal: 10.w),
                            child: Image.asset('assets/images/premium.png',
                                height: 120.h, width: 100.w),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                'The Flash',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_rate,
                                          color: Colors.white, size: 20.spMax)),
                                  SizedBox(width: 02.w),
                                  Text('6.9',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp)),
                                ],
                              ),
                              Text('Released:  ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.sp)),
                              SizedBox(height: 05.h),
                              Container(
                                height: 40.h,
                                width: 200.w,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 40.h,
                                          width: 70.w,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r))),
                                          child: Center(
                                            child: Text('Action',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.sp)),
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )),
      );
    }
    if (widget.index == 12) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, SearchPage.nameRoute);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white)),
            title: Text(widget.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold))),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 05, right: 05, top: 08),
                    child: Container(
                      height: 140.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.h, horizontal: 10.w),
                            child: Image.asset('assets/images/premium.png',
                                height: 120.h, width: 100.w),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                'The Flash',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_rate,
                                          color: Colors.white, size: 20.spMax)),
                                  SizedBox(width: 02.w),
                                  Text('6.9',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp)),
                                ],
                              ),
                              Text('Released:  ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.sp)),
                              SizedBox(height: 05.h),
                              Container(
                                height: 40.h,
                                width: 200.w,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 40.h,
                                          width: 70.w,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r))),
                                          child: Center(
                                            child: Text('Action',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.sp)),
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )),
      );
    }
    if (widget.index == 13) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, SearchPage.nameRoute);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white)),
            title: Text(widget.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold))),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 05, right: 05, top: 08),
                    child: Container(
                      height: 140.h,
                      width: double.infinity.w,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.r))),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.h, horizontal: 10.w),
                            child: Image.asset('assets/images/premium.png',
                                height: 120.h, width: 100.w),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                'The Flash',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.sp),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_rate,
                                          color: Colors.white, size: 20.spMax)),
                                  SizedBox(width: 02.w),
                                  Text('6.9',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp)),
                                ],
                              ),
                              Text('Released:  ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.sp)),
                              SizedBox(height: 05.h),
                              Container(
                                height: 40.h,
                                width: 200.w,
                                decoration: const BoxDecoration(
                                    color: Colors.transparent),
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: 40.h,
                                          width: 70.w,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r))),
                                          child: Center(
                                            child: Text('Action',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.sp)),
                                          ),
                                        ),
                                      );
                                    }),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )),
      );
    }
    return const Scaffold();
  }
}
