class CustomRadioButton {
  String name;
  bool isSelected;

  CustomRadioButton({required this.name, required this.isSelected});

  factory CustomRadioButton.fromMap(map) => CustomRadioButton(
      name: map['name'] ?? '', isSelected: map['isSelected'] ?? false);

  Map<String, dynamic> toMap() {
    return {'name': name, 'isSelected': isSelected};
  }
}
