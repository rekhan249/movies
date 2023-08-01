import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KeyAccountButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Icon icon;
  final Text label;
  final ButtonStyle style;
  const KeyAccountButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.label,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40.h,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: icon,
        style: style,
        label: label,
      ),
    );
  }
}
