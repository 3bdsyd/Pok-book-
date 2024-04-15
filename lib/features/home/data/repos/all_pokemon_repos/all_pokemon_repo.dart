abstract class AllPokemonRepo {
  Future getAllPokemon({
    required final int limit,
    required final int offset,
  });
}
