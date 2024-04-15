import 'package:pokebook/core/network/api_services.dart';
import 'package:pokebook/core/utils/constant/app_api.dart';
import 'package:pokebook/features/home/data/model/pokemon_details/pokemon_details.dart';
import 'package:pokebook/features/home/data/repos/details_pokemon_repos/details_pokemon_repo.dart';

class DetailsPokemonRepoImp extends DetailsPokemonRepo {
  final ApiServices apiServices = ApiServices();
  @override
  Future getPokemonDetails({required final String namePokemon}) async {
    final result = await apiServices.get(
      url: AppApi.detailsPokemon + namePokemon,
    );
    return result.fold(
      (failure) => failure.errMessage,
      (pokemon) => PokemonDetails.fromJson(pokemon),
    );
  }
}
