import 'package:flutter/material.dart';
import 'package:pokebook/core/gen/colors.gen.dart';

class CustomNameAppWidget extends StatelessWidget {
  final TextStyle? textStyles;
  const CustomNameAppWidget({
    super.key,
    required this.textStyles,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Poké',
        style: textStyles,
        children: const [
          TextSpan(
            text: 'book',
            style: TextStyle(
              color: ColorName.mandy,
            ),
          ),
        ],
      ),
    );
  }
}
