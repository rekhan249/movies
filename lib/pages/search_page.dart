import 'package:dart_flex/pages/search_in_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPage extends StatefulWidget {
  static const String nameRoute = '/search-page';
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _searchController = TextEditingController();
  final List<String> items = [
    'Action',
    'Adventure',
    'Animation',
    'Comedy',
    'Crime',
    'Documentry',
    'Drama',
    'Family',
    'Fantasy',
    'History',
    'Horror',
    'Music',
    'Mystery',
    'Romance'
  ];
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Search Movies',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.r))),
                  child: Padding(
                    padding: const EdgeInsets.all(05.0),
                    child: TextFormField(
                      controller: _searchController,
                      decoration: InputDecoration(
                          hintText: 'Search here',
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 18.sp),
                          suffixIcon: Icon(Icons.search,
                              color: Colors.black, size: 25.spMax)),
                    ),
                  ),
                ),
              ),
              Container(
                height: 560.h,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => SearchInSearch(
                                    index: index, name: items[index])));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 8.w, top: 8.h),
                        child: Container(
                          height: 40.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.r))),
                          child: Center(
                            child: Stack(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  // child: Image.asset('assets/images/premium.png',
                                  //     fit: BoxFit.cover),
                                ),
                                Positioned(
                                    left: 40,
                                    top: 30,
                                    child: Text(
                                      'Action',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25.sp,
                                          fontWeight: FontWeight.bold),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
