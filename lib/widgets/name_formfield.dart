import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameTexformField extends StatelessWidget {
  final TextEditingController firstNameController;
  final String hintText;
  final String label;
  final String? Function(dynamic value) validator;
  const NameTexformField({
    super.key,
    required this.firstNameController,
    required this.hintText,
    required this.label,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: firstNameController,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: hintText,
        label:
            Text(label, style: TextStyle(fontSize: 15.sp, color: Colors.white)),
        prefixIcon: const Icon(Icons.person, color: Colors.red),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.greenAccent),
          borderRadius: BorderRadius.circular(5.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
      validator: validator,
    );
  }
}
