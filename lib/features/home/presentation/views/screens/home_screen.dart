import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/features/home/data/repos/all_pokemon_repos/all_pokemon_repo_imp.dart';
import 'package:pokebook/features/home/data/repos/details_pokemon_repos/details_pokemon_repo_imp.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/view_all_cubit/all_pokemon_cubit.dart';
import 'package:pokebook/features/home/presentation/views/widgets/body_home_widget.dart';

@RoutePage()
class HomeScreen extends StatelessWidget implements AutoRouteWrapper {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BodyHomeWidget(),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => AllPokemonCubit(
        AllPokemonRepoImp(),
        DetailsPokemonRepoImp(),
        DetailsPokemonRepoImp(),
        TextEditingController(),
        // ScrollController(),
      )..getAllPokemon(),
      child: this,
    );
  }
}
