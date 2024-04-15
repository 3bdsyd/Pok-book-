import 'package:pokebook/core/network/api_services.dart';
import 'package:pokebook/core/utils/constant/app_api.dart';
import 'package:pokebook/features/home/data/model/all_pokemon/all_pokemon.dart';
import 'package:pokebook/features/home/data/repos/all_pokemon_repos/all_pokemon_repo.dart';

class AllPokemonRepoImp extends AllPokemonRepo {
  final ApiServices apiServices = ApiServices();
  @override
  Future getAllPokemon({
    required final int limit,
    required final int offset,
  }) async {
    final result = await apiServices.get(
      url: '${AppApi.allPokemon}?limit=$limit&offset=$offset',
    );
    return result.fold(
      (failure) => failure.errMessage,
      (pokemon) => AllPokemon.fromJson(pokemon),
    );
  }
}
