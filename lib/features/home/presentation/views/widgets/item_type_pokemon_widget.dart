import 'package:flutter/material.dart';
import 'package:pokebook/core/gen/colors.gen.dart';
import 'package:pokebook/core/styles/text_styles.dart';

class ItemTypePokemonWidget extends StatelessWidget {
  final String pokemonType;
  const ItemTypePokemonWidget({super.key, required this.pokemonType});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 160),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: ColorName.seashell,
            borderRadius: BorderRadius.circular(53),
          ),
          child: pokemonNameEmoji(),
        ),
      ),
    );
  }

  Text pokemonNameEmoji() {
    switch (pokemonType) {
      case 'fire':
        return Text(
          '🔥 Fire',
          style: TextStyles.style22.copyWith(
            fontWeight: FontWeight.normal,
            overflow: TextOverflow.ellipsis,
          ),
        );
      case 'flying':
        return Text(
          '🦋 Flying',
          style: TextStyles.style22.copyWith(
            fontWeight: FontWeight.normal,
            overflow: TextOverflow.ellipsis,
          ),
        );

      case 'grass':
        return Text(
          '🌿 Grass',
          style: TextStyles.style22.copyWith(
            fontWeight: FontWeight.normal,
            overflow: TextOverflow.ellipsis,
          ),
        );
      case 'poison':
        return Text(
          '☠️ Poison',
          style: TextStyles.style22.copyWith(
            fontWeight: FontWeight.normal,
            overflow: TextOverflow.ellipsis,
          ),
        );
      case 'normal':
        return Text(
          '🐻 Normal',
          style: TextStyles.style22.copyWith(
            fontWeight: FontWeight.normal,
            overflow: TextOverflow.ellipsis,
          ),
        );
      case 'bug':
        return Text(
          '🐞 Bug',
          style: TextStyles.style22.copyWith(
            fontWeight: FontWeight.normal,
            overflow: TextOverflow.ellipsis,
          ),
        );
      case 'water':
        return Text(
          '💦 Water',
          style: TextStyles.style22.copyWith(
            fontWeight: FontWeight.normal,
            overflow: TextOverflow.ellipsis,
          ),
        );
      case 'electric':
        return Text(
          '⚡ Electric',
          style: TextStyles.style22.copyWith(
            fontWeight: FontWeight.normal,
            overflow: TextOverflow.ellipsis,
          ),
        );
      case 'ground':
        return Text(
          '🐾 Ground',
          style: TextStyles.style22.copyWith(
            fontWeight: FontWeight.normal,
            overflow: TextOverflow.ellipsis,
          ),
        );
    }
    return Text(
      pokemonType,
      style: TextStyles.style22.copyWith(
        fontWeight: FontWeight.normal,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
