import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:dart_flex/pages/language_categories.dart';
import 'package:dart_flex/provider/radios_button_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class InterestCategories extends StatefulWidget {
  static const String nameRoute = '/categories';
  const InterestCategories({super.key});

  @override
  State<InterestCategories> createState() => _InterestCategoriesState();
}

class _InterestCategoriesState extends State<InterestCategories> {
  @override
  Widget build(BuildContext context) {
    Provider.of<CustomRadioButtonProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Movies Categories',
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
              Text("Let's get to know you better",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: Colors.white)),
              SizedBox(height: 05.h),
              Text("What genres will you be interested to watch?",
                  style: TextStyle(fontSize: 12.sp, color: Colors.white)),
              SizedBox(height: 10.h),
              Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(children: [
                    // SizedBox(
                    //     height: 20.h,
                    //     child: const Text('Single Selection',
                    //         style: TextStyle(
                    //             color: Colors.white,
                    //             fontWeight: FontWeight.bold))),
                    // Consumer<CustomRadioButtonProvider>(
                    //   builder: (context, cRBP, child) => ChipsChoice.single(
                    //     value: cRBP.tag,
                    //     onChanged: (value) => cRBP.singleValueSelection(value),
                    //     choiceItems: C2Choice.listFrom(
                    //       source: cRBP.options,
                    //       value: (index, item) => index,
                    //       label: (index, item) => item.toString(),
                    //     ),
                    //     choiceActiveStyle: const C2ChoiceStyle(
                    //         color: Colors.red,
                    //         borderColor: Colors.white,
                    //         borderRadius: BorderRadius.all(
                    //           Radius.circular(5),
                    //         )),
                    //     choiceStyle: const C2ChoiceStyle(
                    //         color: Color(0xFF1C1C1C),
                    //         borderRadius: BorderRadius.all(Radius.circular(5))),
                    //     wrapped: true,
                    //     textDirection: TextDirection.ltr,
                    //   ),
                    // ),
                    // SizedBox(
                    //     height: 20.h,
                    //     child: const Text('OR',
                    //         style: TextStyle(
                    //             color: Colors.white,
                    //             fontWeight: FontWeight.bold))),
                    SizedBox(
                        height: 20.h,
                        child: const Text('Multiple Selection',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))),
                    Consumer<CustomRadioButtonProvider>(
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
                          Navigator.pushNamed(
                              context, LanguagesCategories.nameRoute);
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

// Consumer<CustomRadioButtonProvider>(
//                   builder: (context, cRBP, child) => ListView.builder(
//                     shrinkWrap: true,
//                     itemCount: cRBP.radiosButton.length,
//                     itemBuilder: (context, index) => InkWell(
//                       onTap: () {
//                         cRBP.onSelectionValue(index);
//                       },
//                       child: RadioItem(cRBP.radiosButton[index]),
//                     ),
//                   ),
//                 ),