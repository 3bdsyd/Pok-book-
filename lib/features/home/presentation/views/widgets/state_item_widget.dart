import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/core/gen/colors.gen.dart';
import 'package:pokebook/core/styles/text_styles.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/details_cubit/details_pokemon_cubit.dart';
import 'package:pokebook/features/home/presentation/views/widgets/divider_about_widget.dart';

class StateItemWidget extends StatelessWidget {
  final String statsName;
  final int statsValue;
  const StateItemWidget({
    super.key,
    required this.statsName,
    required this.statsValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                statsName,
                style: TextStyles.style22.copyWith(
                  fontWeight: FontWeight.normal,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 15),
              alignment: Alignment.centerLeft,
              height: 10,
              width: 100,
              color: ColorName.silver,
              child: BlocBuilder<DetailsPokemonCubit, DetailsState>(
                  builder: (context, state) {
                return Container(
                  width: statsValue + .0,
                  color: ColorName.mandy,
                );
              }),
            ),
            SizedBox(
              width: 35,
              child: Text(
                '$statsValue',
                style: TextStyles.style18.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        const DividerAboutWidget(),
        const SizedBox(height: 5)
      ],
    );
  }
}
