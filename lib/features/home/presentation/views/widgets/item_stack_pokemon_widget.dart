import 'package:flutter/material.dart';
import 'package:pokebook/features/home/data/model/pokemon_details/pokemon_details.dart';
import 'package:pokebook/features/home/presentation/views/widgets/card_pokemon_details_widget.dart';
import 'package:pokebook/shared/widgets/custom_net_image_widget.dart';

class ItemStackPokemonWidget extends StatelessWidget {
  final PokemonDetails pokemonDetails;
  const ItemStackPokemonWidget({super.key, required this.pokemonDetails});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CardPokemonDetailsWidget(pokemonDetails: pokemonDetails),
        Positioned(
          top: 0,
          child: CustomNetImageWidget(
              urlImage:
                  pokemonDetails.sprites!.other!.dreamWorld!.frontDefault ??
                      'https://www.svgrepo.com/show/340721/no-image.svg',
              height: 320),
        ),
      ],
    );
  }
}
