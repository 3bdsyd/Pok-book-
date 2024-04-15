part of 'search_cubit.dart';

class SearchState {
  String? name;
  SearchState({this.name});
}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchLoaded extends SearchState {
  final PokemonDetails pokemonDetails;
  SearchLoaded({required this.pokemonDetails});
}

final class SearchError extends SearchState {
  final String errMessage;
  SearchError({required this.errMessage});
}
