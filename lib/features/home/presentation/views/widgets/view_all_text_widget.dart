import 'package:flutter/material.dart';
import 'package:pokebook/core/gen/colors.gen.dart';
import 'package:pokebook/core/styles/text_styles.dart';

class ViewAllTextWidget extends StatelessWidget {
  const ViewAllTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'View All',
      style: TextStyles.style18.copyWith(
        color: ColorName.bunker,
        decoration: TextDecoration.underline,
        decorationColor: ColorName.bunker,
      ),
    );
  }
}
