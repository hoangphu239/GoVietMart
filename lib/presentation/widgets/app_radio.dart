import 'package:flutter/material.dart';
import 'package:hunty/common/constants/size_constants.dart';
import 'package:hunty/theme/theme.dart';

class AppRadio extends StatelessWidget {
  final String value;
  final String groupValue;
  final ValueChanged<String> onChanged;
  final Color activeColor;
  final double borderWidth, outerSize, innerSize;

  const AppRadio({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.outerSize = Sizes.dimen_26,
    this.innerSize = Sizes.dimen_18,
    this.activeColor = Colors.blue,
    this.borderWidth = Sizes.dimen_1,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = value == groupValue;
    return GestureDetector(
      onTap: () => onChanged(value),
      child: Container(
        width: outerSize,
        height: outerSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? activeColor : kColorTextSecondary,
            width: borderWidth, // Độ dày viền
          ),
        ),
        child: isSelected
            ? Center(
                child: Container(
                  width: innerSize,
                  height: innerSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: activeColor,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
