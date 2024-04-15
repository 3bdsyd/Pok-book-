

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokebook/core/gen/colors.gen.dart';

class CustomNetImageWidget extends StatelessWidget {
  final String urlImage;
  final double height;
  const CustomNetImageWidget(
      {super.key, required this.urlImage, required this.height});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.network(
      placeholderBuilder: (context) => SizedBox(
        height: height,
        child: const Align(
          alignment: Alignment.center,
          child: CircularProgressIndicator(
            color: ColorName.mandy,
          ),
        ),
      ),
      urlImage,
      height: 250,
      width: 250,
      fit: BoxFit.scaleDown,
    );
  }
}
