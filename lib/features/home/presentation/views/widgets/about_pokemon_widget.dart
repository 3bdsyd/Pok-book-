import 'package:flutter/material.dart';
import 'package:pokebook/core/gen/colors.gen.dart';
import 'package:pokebook/features/home/presentation/views/widgets/body_details_widget.dart';

class AboutPokemonWidget extends StatelessWidget {
  const AboutPokemonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 70),
      decoration: BoxDecoration(
        color: ColorName.white,
        boxShadow: [
          BoxShadow(
            color: ColorName.boulder.withOpacity(.1),
            offset: const Offset(0, -8),
            spreadRadius: 10,
            blurRadius: 10,
          ),
        ],
      ),
      child: const BodyDetailsWidget(type: 'About',),
    );
  }
}
