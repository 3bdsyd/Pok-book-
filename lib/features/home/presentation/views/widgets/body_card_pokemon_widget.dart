import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokebook/core/gen/colors.gen.dart';
import 'package:pokebook/core/router/app_router.gr.dart';
import 'package:pokebook/features/home/data/model/pokemon_details/pokemon_details.dart';
import 'package:pokebook/features/home/presentation/views/widgets/details_pokemon_card_widget.dart';

class BodyCardPokemonWidget extends StatelessWidget {
  final PokemonDetails pokemonDetails;
  const BodyCardPokemonWidget({super.key, required this.pokemonDetails});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context).push(DetailsPokemonRoute(
        pokemonDetails: pokemonDetails,
      )),
      splashColor: ColorName.mandy.withOpacity(.1),
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onLongPress: () => HapticFeedback.vibrate(),
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 13,
                vertical: 11,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorName.seashell,
              ),
              height: 200,
            ),
            DetailsPokemonCardWidget(
              pokemonDetails: pokemonDetails,
            ),
          ],
        ),
      ),
    );
  }
}
