import 'package:equatable/equatable.dart';

import 'ability.dart';
import 'cries.dart';
import 'form.dart';
import 'game_index.dart';
import 'move.dart';
import 'species.dart';
import 'sprites.dart';
import 'stat.dart';
import 'type.dart';

class PokemonDetails extends Equatable {
  final List<Ability>? abilities;
  final int? baseExperience;
  final Cries? cries;
  final List<Form>? forms;
  final List<GameIndex>? gameIndices;
  final int? height;
  final List<dynamic>? heldItems;
  final int? id;
  final bool? isDefault;
  final String? locationAreaEncounters;
  final List<Move>? moves;
  final String? name;
  final int? order;
  final List<dynamic>? pastAbilities;
  final List<dynamic>? pastTypes;
  final Species? species;
  final Sprites? sprites;
  final List<Stat>? stats;
  final List<Types>? types;
  final int? weight;

  const PokemonDetails({
    this.abilities,
    this.baseExperience,
    this.cries,
    this.forms,
    this.gameIndices,
    this.height,
    this.heldItems,
    this.id,
    this.isDefault,
    this.locationAreaEncounters,
    this.moves,
    this.name,
    this.order,
    this.pastAbilities,
    this.pastTypes,
    this.species,
    this.sprites,
    this.stats,
    this.types,
    this.weight,
  });

  factory PokemonDetails.fromJson(Map<String, dynamic> json) {
    return PokemonDetails(
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => Ability.fromJson(e as Map<String, dynamic>))
          .toList(),
      baseExperience: json['base_experience'] as int?,
      cries: json['cries'] == null
          ? null
          : Cries.fromJson(json['cries'] as Map<String, dynamic>),
      forms: (json['forms'] as List<dynamic>?)
          ?.map((e) => Form.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameIndices: (json['game_indices'] as List<dynamic>?)
          ?.map((e) => GameIndex.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: json['height'] as int?,
      heldItems: json['held_items'] as List<dynamic>?,
      id: json['id'] as int?,
      isDefault: json['is_default'] as bool?,
      locationAreaEncounters: json['location_area_encounters'] as String?,
      moves: (json['moves'] as List<dynamic>?)
          ?.map((e) => Move.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      order: json['order'] as int?,
      pastAbilities: json['past_abilities'] as List<dynamic>?,
      pastTypes: json['past_types'] as List<dynamic>?,
      species: json['species'] == null
          ? null
          : Species.fromJson(json['species'] as Map<String, dynamic>),
      sprites: json['sprites'] == null
          ? null
          : Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>?)
          ?.map((e) => Stat.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => Types.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: json['weight'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'abilities': abilities?.map((e) => e.toJson()).toList(),
        'base_experience': baseExperience,
        'cries': cries?.toJson(),
        'forms': forms?.map((e) => e.toJson()).toList(),
        'game_indices': gameIndices?.map((e) => e.toJson()).toList(),
        'height': height,
        'held_items': heldItems,
        'id': id,
        'is_default': isDefault,
        'location_area_encounters': locationAreaEncounters,
        'moves': moves?.map((e) => e.toJson()).toList(),
        'name': name,
        'order': order,
        'past_abilities': pastAbilities,
        'past_types': pastTypes,
        'species': species?.toJson(),
        'sprites': sprites?.toJson(),
        'stats': stats?.map((e) => e.toJson()).toList(),
        'types': types?.map((e) => e.toJson()).toList(),
        'weight': weight,
      };

  @override
  List<Object?> get props {
    return [
      abilities,
      baseExperience,
      cries,
      forms,
      gameIndices,
      height,
      heldItems,
      id,
      isDefault,
      locationAreaEncounters,
      moves,
      name,
      order,
      pastAbilities,
      pastTypes,
      species,
      sprites,
      stats,
      types,
      weight,
    ];
  }
}
