import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/features/home/data/model/pokemon_details/pokemon_details.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/details_cubit/details_pokemon_cubit.dart';
import 'package:pokebook/features/home/presentation/views/widgets/app_bar_details_widget.dart';

@RoutePage()
class DetailsPokemonScreen extends StatelessWidget implements AutoRouteWrapper {
  final PokemonDetails pokemonDetails;
  const DetailsPokemonScreen({super.key, required this.pokemonDetails});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AppBarDetailsWidget(),
          // NameAndTypePokemonWidget(),
          // MoreInfoPokemonWidget(),
        ],
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailsPokemonCubit(pokemonDetails),
      child: this,
    );
  }
}
