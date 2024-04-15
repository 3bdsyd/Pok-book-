import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/view_all_cubit/all_pokemon_cubit.dart';
import 'package:pokebook/features/home/presentation/views/widgets/list_dot_bottom_bar_widget.dart';
import 'package:pokebook/features/home/presentation/views/widgets/list_number_bottom_bar_widget.dart';

class ListItemsBottomBarWidget extends StatelessWidget {
  const ListItemsBottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.generate(
        5,
        (index) => index == 3
            ? const ListDotBottomBarWidget()
            : ListNumberBottomBarWidget(
                active: index + context.read<AllPokemonCubit>().currentPage ==
                    context.read<AllPokemonCubit>().currentPage,
                text: index + context.read<AllPokemonCubit>().currentPage + 1,
                index: index,
              ),
      ),
    );
  }
}
