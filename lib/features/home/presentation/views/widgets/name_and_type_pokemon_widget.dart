import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/core/styles/text_styles.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/details_cubit/details_pokemon_cubit.dart';
import 'package:pokebook/features/home/presentation/views/widgets/item_type_pokemon_widget.dart';

class NameAndTypePokemonWidget extends StatelessWidget {
  const NameAndTypePokemonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.read<DetailsPokemonCubit>().pokemonDetails.name!,
          style: TextStyles.style48.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 30,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: context
                .read<DetailsPokemonCubit>()
                .pokemonDetails
                .types!
                .map((e) => ItemTypePokemonWidget(pokemonType: e.type!.name!))
                .toList(),
          ),
        ),
      ],
    );
  }
}
