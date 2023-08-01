/*
class CustomRadioButtonProvider with ChangeNotifier {
  CustomRadioButton? _customRadioButton;
  // ignore: prefer_final_fields
  List<CustomRadioButton> _radiosButton = [
    CustomRadioButton(name: 'Adventure', isSelected: false),
    CustomRadioButton(name: 'Drama', isSelected: false),
    CustomRadioButton(name: 'Horror', isSelected: false),
    CustomRadioButton(name: 'Mystery', isSelected: false),
    CustomRadioButton(name: 'War', isSelected: false),
    CustomRadioButton(name: 'Romance', isSelected: false),
    CustomRadioButton(name: 'Science Fiction', isSelected: false),
    CustomRadioButton(name: 'Documentry', isSelected: false),
    CustomRadioButton(name: 'Thriller', isSelected: false),
    CustomRadioButton(name: 'Music', isSelected: false),
  ];
  get customRadioButton => _customRadioButton;
  get radiosButton => _radiosButton;

  onSelectionValue(int index) {
    // ignore: avoid_function_literals_in_foreach_calls
    _radiosButton.forEach((element) => element.isSelected = false);
    _radiosButton[index].isSelected = true;
    notifyListeners();
  }
}
*/
import 'package:flutter/material.dart';

class CustomRadioButtonProvider with ChangeNotifier {
  int _tag = 1;
  // ignore: prefer_final_fields
  List<String> _tags = [];
  // ignore: prefer_final_fields
  List<String> _options = [
    'Adventure',
    'Drama',
    'Horror',
    'Mystery',
    'War',
    'Romance',
    'Science Fiction',
    'Documentry',
    'Thriller',
    'Music'
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
