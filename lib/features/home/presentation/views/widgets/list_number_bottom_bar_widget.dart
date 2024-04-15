import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/core/gen/colors.gen.dart';
import 'package:pokebook/core/styles/text_styles.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/view_all_cubit/all_pokemon_cubit.dart';
import 'package:pokebook/features/home/presentation/views/widgets/numbering_element_widget.dart';

class ListNumberBottomBarWidget extends StatelessWidget {
  final bool active;
  final int text;
  final int index;

  const ListNumberBottomBarWidget({
    super.key,
    required this.active,
    required this.text,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return NumberingElementWidget(
      elevation: active ? 0 : null,
      color: active ? ColorName.mandy : ColorName.mercury,
      onTap: () => context.read<AllPokemonCubit>().selectCurrentPage(index),
      child: Text(
        '$text',
        style: active
            ? TextStyles.style22.copyWith(color: ColorName.white)
            : TextStyles.style22,
      ),
    );
  }
}
