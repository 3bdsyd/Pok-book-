import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/view_all_cubit/all_pokemon_cubit.dart';
import 'package:pokebook/features/home/presentation/views/widgets/body_bottom_bar_widget.dart';

class BottomBarNavigationWidget extends StatelessWidget {
  const BottomBarNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllPokemonCubit, AllPokemonState>(
      builder: (context, state) {
        if (state is AllPokemonLoaded) {
          return const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                top: 53,
                bottom: 20,
              ),
              child: BodyBottomBarWidget(),
            ),
          );
        }
        return const SliverToBoxAdapter(
          child: SizedBox(
            height: 0,
            width: 0,
          ),
        );
      },
    );
  }
}
