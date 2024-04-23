import 'package:flutter/material.dart';
import 'package:pokebook/core/gen/colors.gen.dart';
import 'package:pokebook/features/home/presentation/views/widgets/box_color_app_bar_details_widget.dart';
import 'package:pokebook/features/home/presentation/views/widgets/image_app_bar_details_widget.dart';

class AppBarDetailsWidget extends StatelessWidget {
  const AppBarDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 343,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          const BoxColorAppBarDetailsWidget(),
          Positioned(
            left: 20,
            top: 56,
            child: Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: ColorName.white,
              ),
              child: const Icon(Icons.arrow_left),
            ),
          ),
          Container(
            height: 347,
            width: double.maxFinite,
            color: Colors.transparent,
          ),
          const ImageAppBarDetailsWidget(),
        ],
      ),
    );
  }
}
