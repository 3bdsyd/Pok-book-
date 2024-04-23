import 'package:flutter/material.dart';
import 'package:pokebook/core/styles/text_styles.dart';

class ItemAboutWidget extends StatelessWidget {
  final String title;
  final String value;

  const ItemAboutWidget({super.key, required this.title, required this.value,});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(title, style: TextStyles.style15),
        const SizedBox(
          width: 30,
        ),
        Text(
          value,
          style: TextStyles.style15.copyWith(
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
