import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/details_cubit/details_pokemon_cubit.dart';
import 'package:pokebook/features/home/presentation/views/widgets/abilities_items_widget.dart';
import 'package:pokebook/features/home/presentation/views/widgets/divider_about_widget.dart';
import 'package:pokebook/features/home/presentation/views/widgets/item_about_widget.dart';

class BodyAboutWidget extends StatelessWidget {
  const BodyAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        ItemAboutWidget(
          title: 'Height',
          value:
              '${context.read<DetailsPokemonCubit>().pokemonDetails.height}m',
        ),
        const SizedBox(
          height: 12,
        ),
        const DividerAboutWidget(),
        const SizedBox(
          height: 12,
        ),
        ItemAboutWidget(
          title: 'Weight',
          value:
              '${context.read<DetailsPokemonCubit>().pokemonDetails.weight}Kg',
        ),
        const SizedBox(
          height: 12,
        ),
        const DividerAboutWidget(),
        const SizedBox(
          height: 12,
        ),
        const AbilitiesItemsWidget(),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
