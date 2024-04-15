import 'package:flutter/material.dart';
import 'package:pokebook/core/gen/colors.gen.dart';
import 'package:pokebook/features/home/data/model/pokemon_details/pokemon_details.dart';
import 'package:pokebook/features/home/presentation/views/widgets/body_card_pokemon_widget.dart';

class CardPokemonDetailsWidget extends StatelessWidget {
  final PokemonDetails pokemonDetails;

  const CardPokemonDetailsWidget({super.key, required this.pokemonDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      child: Align(
        child: SizedBox(
          height: 361,
          child: Card(
            surfaceTintColor: ColorName.white,
            color: ColorName.white,
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: BodyCardPokemonWidget(
              pokemonDetails: pokemonDetails,
            ),
          ),
        ),
      ),
    );
  }
}
