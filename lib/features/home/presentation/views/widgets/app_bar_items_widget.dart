import 'package:flutter/material.dart';
import 'package:pokebook/core/gen/assets.gen.dart';
import 'package:pokebook/core/styles/text_styles.dart';
import 'package:pokebook/features/home/presentation/views/widgets/select_theme_widget.dart';
import 'package:pokebook/shared/widgets/title_name_app_widget.dart';

class AppBarItemsWidget extends StatelessWidget {
  const AppBarItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            FittedBox(
              child: Assets.images.logo.svg(
                width: 90,
                height: 60,
              ),
            ),
            const SizedBox(width: 7),
            const CustomNameAppWidget(
              textStyles: TextStyles.style22,
            ),
          ],
        ),
        const SizedBox(width: 15),
        const SelectThemeWidget(),
      ],
    );
  }
}
