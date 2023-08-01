import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:dart_flex/pages/main_home_page.dart';
import 'package:dart_flex/provider/lang_category_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class LanguagesCategories extends StatefulWidget {
  static const String nameRoute = '/language-selection';
  const LanguagesCategories({super.key});

  @override
  State<LanguagesCategories> createState() => _LanguagesCategoriesState();
}

class _LanguagesCategoriesState extends State<LanguagesCategories> {
  @override
  Widget build(BuildContext context) {
    Provider.of<LanguageCategoryProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Movies in Language',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.red)),
            centerTitle: true),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Text("Select you Language",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                      color: Colors.white)),
              SizedBox(height: 05.h),
              Text("What languages will you be interested to watch?",
                  style: TextStyle(fontSize: 12.sp, color: Colors.white)),
              SizedBox(height: 10.h),
              Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(children: [
                    SizedBox(
                        height: 20.h,
                        child: const Text('Multiple Selection',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))),
                    Consumer<LanguageCategoryProvider>(
                      builder: (context, cRBP, child) => ChipsChoice.multiple(
                        value: cRBP.tags,
                        onChanged: (value) =>
                            cRBP.multipleValueSelection(value),
                        choiceItems: C2Choice.listFrom(
                          source: cRBP.options,
                          value: (index, item) => item,
                          label: (index, item) => item.toString(),
                        ),
                        choiceActiveStyle: const C2ChoiceStyle(
                            color: Colors.red,
                            borderColor: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            )),
                        choiceStyle: const C2ChoiceStyle(
                            color: Color(0xFF1C1C1C),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        wrapped: true,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  ])),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 30.h),
                child: SizedBox(
                    height: 40.h,
                    width: double.infinity.w,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MainHomePage.nameRoute);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                        ),
                        child: Text('Continue',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
