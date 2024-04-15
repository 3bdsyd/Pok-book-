import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/core/gen/assets.gen.dart';
import 'package:pokebook/core/gen/colors.gen.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/view_all_cubit/all_pokemon_cubit.dart';
import 'package:pokebook/features/home/presentation/views/widgets/list_items_bottom_bar_widget.dart';
import 'package:pokebook/features/home/presentation/views/widgets/numbering_element_widget.dart';

class BodyBottomBarWidget extends StatelessWidget {
  const BodyBottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NumberingElementWidget(
          color: ColorName.mercury,
          child: Assets.icons.leftArrow.svg(),
          onTap: () => context.read<AllPokemonCubit>().previousPage(),
        ),
        const ListItemsBottomBarWidget(),
        NumberingElementWidget(
          color: ColorName.mercury,
          child: Assets.icons.rightArrow.svg(),
          onTap: () => context.read<AllPokemonCubit>().nextPage(),
        ),
      ],
    );
  }
}
