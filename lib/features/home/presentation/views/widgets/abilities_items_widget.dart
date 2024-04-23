import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/core/styles/text_styles.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/details_cubit/details_pokemon_cubit.dart';

class AbilitiesItemsWidget extends StatelessWidget {
  const AbilitiesItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Abilities', style: TextStyles.style15),
        const SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: context
              .read<DetailsPokemonCubit>()
              .pokemonDetails
              .abilities!
              .map((e) => Text(
                    '• ${e.ability!.name!}',
                    style: TextStyles.style15.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }
}
