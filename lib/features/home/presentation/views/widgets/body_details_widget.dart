import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/core/gen/colors.gen.dart';
import 'package:pokebook/core/styles/text_styles.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/details_cubit/details_pokemon_cubit.dart';
import 'package:pokebook/features/home/presentation/views/widgets/divider_about_widget.dart';

class BodyDetailsWidget extends StatelessWidget {
  final String type;
  const BodyDetailsWidget({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          height: 5,
        ),
        Text(
          type,
          style: TextStyles.style22.copyWith(
            color: ColorName.black,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const DividerAboutWidget(),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                ColorName.white,
                ColorName.alto.withOpacity(.2),
                ColorName.alto.withOpacity(.2),
                ColorName.white
              ],
            ),
          ),
          child: BlocBuilder<DetailsPokemonCubit, DetailsState>(
            builder: (context, state) =>
                context.read<DetailsPokemonCubit>().bodyDetailsItems[
                    context.read<DetailsPokemonCubit>().currentPage],
          ),
        ),
        const DividerAboutWidget(),
      ],
    );
  }
}
