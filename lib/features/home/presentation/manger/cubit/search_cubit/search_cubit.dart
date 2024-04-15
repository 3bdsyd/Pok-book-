import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pokebook/features/home/data/model/pokemon_details/pokemon_details.dart';
import 'package:pokebook/features/home/data/repos/details_pokemon_repos/details_pokemon_repo_imp.dart';
part 'search_state.dart';

class SearchCubit extends HydratedCubit<SearchState> {
  SearchCubit(this.searchRepo, this.pokemonName) : super(SearchInitial());
  final DetailsPokemonRepoImp searchRepo;
  final TextEditingController pokemonName;
  bool changeColor = false;

   Future<void> getDetailsPokemon() async {
    emit(SearchLoading());

    final name = pokemonName.text.trim();
    if (name.isEmpty) {
      emit(SearchError(errMessage: 'Pokemon Name is Empty!'));
      return;
    }

    final result = await searchRepo.getPokemonDetails(namePokemon: name);

    if (result is PokemonDetails) {
      return emit(SearchLoaded(pokemonDetails: result));
    }

    emit(SearchState(name: name));
  }

  void changeText(String text) {
    emit(SearchState(name: text));
    changeColor = text == pokemonName.text;
  }

  @override
  SearchState? fromJson(Map<String, dynamic> json) {
    final preName = json['name'] as String?;
    pokemonName.text = preName ?? '';
    return SearchState(name: preName ?? '');
  }

  @override
  Map<String, dynamic>? toJson(SearchState state) {
    return {'name': state.name};
  }
}
