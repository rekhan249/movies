import 'package:dart_flex/models/custom_radio_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RadioItem extends StatelessWidget {
  final CustomRadioButton item;
  const RadioItem(this.item, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 35.h,
            width: 125.w,
            decoration: BoxDecoration(
                color: item.isSelected ? Colors.red : Colors.transparent,
                border: Border.all(
                    width: 1.0,
                    color: item.isSelected ? Colors.red : Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(2.0))),
            child: Center(
              child: Text(item.name,
                  style: TextStyle(
                      color: item.isSelected ? Colors.white : Colors.green,
                      fontSize: 15.0)),
            ),
          ),
        ],
      ),
    );
  }
}
