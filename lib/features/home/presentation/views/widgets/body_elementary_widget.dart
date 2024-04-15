import 'package:flutter/material.dart';
import 'package:pokebook/core/gen/assets.gen.dart';
import 'package:pokebook/core/styles/text_styles.dart';
import 'package:pokebook/features/home/presentation/views/widgets/search_elementry_widget.dart';
import 'package:pokebook/features/home/presentation/views/widgets/about_application_text_widget.dart';
import 'package:pokebook/shared/widgets/title_name_app_widget.dart';
import 'package:pokebook/features/home/presentation/views/widgets/view_all_text_widget.dart';

class BodyElementaryWidget extends StatelessWidget {
  const BodyElementaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Assets.images.logo.svg(),
        const SizedBox(
          height: 30,
        ),
        const CustomNameAppWidget(
          textStyles: TextStyles.style48,
        ),
        const SizedBox(
          height: 8,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: AboutApplicationTextWidget(),
        ),
        const Expanded(
          child: SizedBox(
            height: 12,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 27),
          child: SearchElementaryWidget(),
        ),
        const SizedBox(
          height: 16,
        ),
        const ViewAllTextWidget(),
        const Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
