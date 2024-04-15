part of 'all_pokemon_cubit.dart';

class AllPokemonState {}

final class AllPokemonInitial extends AllPokemonState {}

final class AllPokemonLoading extends AllPokemonState {}

final class AllPokemonLoaded extends AllPokemonState {
  final List<PokemonDetails> pokemonDetailsItems;
  AllPokemonLoaded({required this.pokemonDetailsItems});
}

final class AllPokemonSearchLoaded extends AllPokemonState {
  final PokemonDetails pokemonDetails;
  AllPokemonSearchLoaded({required this.pokemonDetails});
}

final class AllPokemonError extends AllPokemonState {
  final String errMessage;
  AllPokemonError({required this.errMessage});
}
