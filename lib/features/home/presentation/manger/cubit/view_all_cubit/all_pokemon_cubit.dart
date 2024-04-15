import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/features/home/data/model/all_pokemon/all_pokemon.dart';
import 'package:pokebook/features/home/data/model/pokemon_details/pokemon_details.dart';
import 'package:pokebook/features/home/data/repos/all_pokemon_repos/all_pokemon_repo_imp.dart';
import 'package:pokebook/features/home/data/repos/details_pokemon_repos/details_pokemon_repo_imp.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/search_cubit/search_cubit.dart';
part 'all_pokemon_state.dart';

class AllPokemonCubit extends Cubit<AllPokemonState> {
  final AllPokemonRepoImp allPokemonRepo;
  final DetailsPokemonRepoImp detailsPokemonRepo;
  final SearchCubit searchCubit = SearchCubit(
    DetailsPokemonRepoImp(),
    TextEditingController(),
  );
  AllPokemonCubit(
    this.allPokemonRepo,
    this.detailsPokemonRepo,
    this.searchRepo,
    this.pokemonName,
    // this.scrollController,
  ) : super(AllPokemonInitial());

  static const int limit = 4;

  int numAllPage = 0;
  int offset = 0;
  int currentPage = 0;
  List<PokemonDetails> pokemonDetailsItems = [];

  // final ScrollController scrollController;

  Future<void> getAllPokemon() async {
    // ? Pagination scroll
    // if (state is AllPokemonMoreLoading) return;
    // if (offset > 0) {
    //   emit(AllPokemonMoreLoading(pokemonDetailsItems: pokemonDetailsItems));
    // } else {
    //   emit(AllPokemonLoading());
    // }
    // pageController.animateTo(0,
    //     duration: Duration(milliseconds: 5), curve: Curves.bounceIn);

    // ? Pagination bottom bar

    if (pokemonName.text.isNotEmpty) {
      return;
    }
    pokemonDetailsItems = []; // * clear pokemon Details List

    emit(AllPokemonLoading());

    final result =
        await allPokemonRepo.getAllPokemon(limit: limit, offset: offset);

    if (result is AllPokemon) {
      numAllPage = (result.count! / limit)
          .floor(); // * get Number All pages and flooring To int

      for (int i = 0; i < result.results!.length; i++) {
        pokemonDetailsItems.add(
          await detailsPokemonRepo.getPokemonDetails(
            namePokemon: result.results![i].name!,
          ), // * get details for each item (Pokemon)
        );
      }

      emit(AllPokemonLoaded(pokemonDetailsItems: pokemonDetailsItems));
      return;

      // offset = offset + 4;
    }

    emit(AllPokemonError(errMessage: result));
  }

  final DetailsPokemonRepoImp searchRepo;
  final TextEditingController pokemonName;
  bool changeColor = false;

  Future<void> pokemonSearch(final String namePokemon) async {
    if (pokemonDetailsItems.isEmpty) return;
    emit(AllPokemonLoading());

    if (namePokemon.isEmpty) {
      emit(AllPokemonLoaded(pokemonDetailsItems: pokemonDetailsItems));

      return;
    }

    final result = await searchRepo.getPokemonDetails(namePokemon: namePokemon);

    if (result is PokemonDetails) {
      return emit(AllPokemonSearchLoaded(pokemonDetails: result));
    }
    emit(AllPokemonLoaded(pokemonDetailsItems: pokemonDetailsItems));
  }

  void nextPage() async {
    if (currentPage == numAllPage - 1) return;

    offset = ++currentPage * limit;

    await getAllPokemon();
  }

  void previousPage() async {
    if (currentPage == 0) return;

    offset = --currentPage * limit;

    await getAllPokemon();
  }

  selectCurrentPage(int index) async {
    offset = (currentPage + index) * 4;
    currentPage = (currentPage + index);
    await getAllPokemon();
  }

  // void selectCurrentPage(final int index) {
  //   if (index >= 4) {
  //     currentPage = numAllPage + currentPage;
  //     offset = numAllPage * limit;
  //     print(offset);
  //   } else {
  //     currentPage = index + currentPage;
  //     offset = currentPage * limit;
  //   }

  //   getAllPokemon();
  // }
}
