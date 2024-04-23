import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/features/home/data/model/pokemon_details/pokemon_details.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/details_cubit/details_pokemon_cubit.dart';
import 'package:pokebook/features/home/presentation/views/widgets/about_pokemon_widget.dart';
import 'package:pokebook/features/home/presentation/views/widgets/app_bar_details_widget.dart';
import 'package:pokebook/features/home/presentation/views/widgets/name_and_type_pokemon_widget.dart';
import 'package:pokebook/features/home/presentation/views/widgets/nav_bar_details_widget.dart';

@RoutePage()
class DetailsPokemonScreen extends StatelessWidget implements AutoRouteWrapper {
  final PokemonDetails pokemonDetails;
  const DetailsPokemonScreen({super.key, required this.pokemonDetails});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      bottomNavigationBar: NavBarDetailsWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarDetailsWidget(),
            SizedBox(height: 30),
            NameAndTypePokemonWidget(),
            SizedBox(height: 50),
            AboutPokemonWidget(),
          ],
        ),
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
