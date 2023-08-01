import 'package:flutter/material.dart';

class LanguageCategoryProvider with ChangeNotifier {
  int _tag = 1;
  // ignore: prefer_final_fields
  List<String> _tags = [];
  // ignore: prefer_final_fields
  List<String> _options = [
    'English',
    'Hindi',
    'Bengali',
    'Telugu',
    'Marathi',
    'Gujarati',
    'Punjabi'
  ];
  get tag => _tag;
  get tags => _tags;
  get options => _options;

  singleValueSelection(value) {
    _tag = value;
    notifyListeners();
  }

  multipleValueSelection(List<Object?> value) {
    // ignore: avoid_function_literals_in_foreach_calls
    value.forEach((element) {
      _tags.add(element.toString());
    });
    notifyListeners();
  }
}
