import 'package:flutter/material.dart';
import 'package:pokebook/core/styles/text_styles.dart';

class AboutApplicationTextWidget extends StatelessWidget {
  const AboutApplicationTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Largest Pokémon index with information about every Pokemon you can think of. ',
      style: TextStyles.style18,
      maxLines: 2,
      textAlign: TextAlign.center,
    );
  }
}
