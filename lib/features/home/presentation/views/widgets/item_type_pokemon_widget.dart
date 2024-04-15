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
          child: pokemonType == 'fire'
              ? Text(
                  '🔥 Fire',
                  style: TextStyles.style22.copyWith(
                    fontWeight: FontWeight.normal,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              : pokemonType == 'flying'
                  ? Text(
                      '🦋 Flying',
                      style: TextStyles.style22.copyWith(
                          fontWeight: FontWeight.normal,
                          overflow: TextOverflow.ellipsis),
                    )
                  : pokemonType == 'grass'
                      ? Text(
                          '🌿 Grass',
                          style: TextStyles.style22.copyWith(
                            fontWeight: FontWeight.normal,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      : pokemonType == 'poison'
                          ? Text(
                              '☠️ Poison',
                              style: TextStyles.style22.copyWith(
                                fontWeight: FontWeight.normal,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          : pokemonType == 'normal'
                              ? Text(
                                  '🐻 Normal',
                                  style: TextStyles.style22.copyWith(
                                    fontWeight: FontWeight.normal,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              : pokemonType == 'bug'
                                  ? Text(
                                      '🐞 Bug',
                                      style: TextStyles.style22.copyWith(
                                          fontWeight: FontWeight.normal,
                                          overflow: TextOverflow.ellipsis),
                                    )
                                  : pokemonType == 'water'
                                      ? Text(
                                          '💦 Water',
                                          style: TextStyles.style22.copyWith(
                                              fontWeight: FontWeight.normal,
                                              overflow: TextOverflow.ellipsis),
                                        )
                                      : pokemonType == 'electric'
                                          ? Text(
                                              '⚡ Electric',
                                              style: TextStyles.style22
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      overflow: TextOverflow
                                                          .ellipsis),
                                            )
                                          : pokemonType == 'ground'
                                              ? Text(
                                                  '🐾 Ground',
                                                  style: TextStyles.style22
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          overflow: TextOverflow
                                                              .ellipsis),
                                                )
                                              : Text(
                                                  pokemonType,
                                                  style: TextStyles.style22
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          overflow: TextOverflow
                                                              .ellipsis),
                                                ),
        ),
      ),
    );
  }
}
