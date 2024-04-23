import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/details_cubit/details_pokemon_cubit.dart';
import 'package:pokebook/features/home/presentation/views/widgets/state_item_widget.dart';

class BodyStateWidget extends StatelessWidget {
  const BodyStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        children: context
            .read<DetailsPokemonCubit>()
            .pokemonDetails
            .stats!
            .map((e) => StateItemWidget(
                statsName: e.stat!.name!, statsValue: e.baseStat!))
            .toList(),
      ),
    );
  }
}
