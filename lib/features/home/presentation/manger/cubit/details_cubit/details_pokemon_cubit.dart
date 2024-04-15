import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/features/home/data/model/pokemon_details/pokemon_details.dart';

part 'details_pokemon_state.dart';

class DetailsPokemonCubit extends Cubit<DetailsState> {
  DetailsPokemonCubit(this.pokemonDetails) : super(DetailsInitial());
  final PokemonDetails pokemonDetails;

}
