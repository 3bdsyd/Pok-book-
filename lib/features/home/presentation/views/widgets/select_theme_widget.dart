import 'package:flutter/material.dart';
import 'package:pokebook/core/gen/colors.gen.dart';

class SelectThemeWidget extends StatelessWidget {
  const SelectThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 42,
      decoration: BoxDecoration(
        color: ColorName.white,
        border: Border.all(
          color: ColorName.boulder,
        ),
        shape: BoxShape.circle,
      ),
      child: Container(
        margin: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          color: ColorName.mandy,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
