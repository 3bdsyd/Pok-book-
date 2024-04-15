import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/core/gen/assets.gen.dart';
import 'package:pokebook/features/home/data/repos/details_pokemon_repos/details_pokemon_repo_imp.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/search_cubit/search_cubit.dart';
import 'package:pokebook/features/home/presentation/views/widgets/body_elementary_widget.dart';

@RoutePage()
class ElementaryScreen extends StatelessWidget implements AutoRouteWrapper {
  const ElementaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Assets.images.noiseBackground.image().image,
                ),
              ),
              child: const BodyElementaryWidget(),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(
        DetailsPokemonRepoImp(),
        TextEditingController(),
      ),
      child: this,
    );
  }
}
