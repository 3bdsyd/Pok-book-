import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/features/home/data/model/pokemon_details/pokemon_details.dart';
import 'package:pokebook/features/home/presentation/views/widgets/body_about_widget.dart';
import 'package:pokebook/features/home/presentation/views/widgets/body_similar_widget.dart';
import 'package:pokebook/features/home/presentation/views/widgets/body_state_widget.dart';
part 'details_pokemon_state.dart';

class DetailsPokemonCubit extends Cubit<DetailsState> {
  DetailsPokemonCubit(this.pokemonDetails) : super(DetailsInitial());
  final PokemonDetails pokemonDetails;
  final List<Widget> bodyDetailsItems = [
    const BodyAboutWidget(),
    const BodyStateWidget(),
    const BodySimilarWidget(),
  ];
  int currentPage = 0;
  void navigateBetweenPages(int index) async {
    currentPage = index;
    emit(MovePages());
  }

}
