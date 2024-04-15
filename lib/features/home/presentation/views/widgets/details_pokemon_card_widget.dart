import 'package:flutter/material.dart';
import 'package:pokebook/core/styles/text_styles.dart';
import 'package:pokebook/features/home/data/model/pokemon_details/pokemon_details.dart';
import 'package:pokebook/features/home/presentation/views/widgets/item_type_pokemon_widget.dart';

class DetailsPokemonCardWidget extends StatelessWidget {
  final PokemonDetails pokemonDetails;
  const DetailsPokemonCardWidget({super.key, required this.pokemonDetails});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 26),
        FittedBox(
          child: Text(
            pokemonDetails.name!,
            style: TextStyles.style32,
          ),
        ),
        const SizedBox(height: 11),
        SizedBox(
          height: 36,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: pokemonDetails.types!
                .map((e) => ItemTypePokemonWidget(pokemonType: e.type!.name!))
                .toList(),
          ),
        ),
      ],
    );
  }
}
