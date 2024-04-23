import 'package:flutter/material.dart';
import 'package:pokebook/core/gen/colors.gen.dart';

class DividerAboutWidget extends StatelessWidget {
  const DividerAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 2.5,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            ColorName.white,
            ColorName.mercury,
            ColorName.mercury,
            ColorName.white
          ],
        ),
      ),
    );
  }
}
