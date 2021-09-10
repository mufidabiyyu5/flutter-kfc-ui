import 'package:flutter/material.dart';
import 'package:kfc/theme.dart';

class Category extends StatelessWidget {
  final String category;
  final bool isSelected;

  Category({this.category = '', this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    Color bgColor;
    Color colorText;
    Color borderColor;
    if (isSelected) {
      bgColor = redPrime;
      colorText = Colors.white;
      borderColor = Colors.white;
    } else {
      bgColor = Colors.white;
      colorText = redPrime;
      borderColor = redPrime;
    }
    return ChoiceChip(
      label: Text(
        category,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: colorText,
        ),
      ),
      selected: true,
      onSelected: (bool value) {},
      selectedColor: bgColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor, width: 0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8),
    );
  }
}
