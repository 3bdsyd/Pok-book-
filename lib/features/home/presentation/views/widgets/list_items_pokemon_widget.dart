import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/core/gen/colors.gen.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/view_all_cubit/all_pokemon_cubit.dart';
import 'package:pokebook/features/home/presentation/views/widgets/item_stack_pokemon_widget.dart';

class ListItemsPokemonWidget extends StatelessWidget {
  const ListItemsPokemonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AllPokemonCubit, AllPokemonState>(
        builder: (context, state) {
      if (state is AllPokemonLoaded) {
        return SliverList.separated(
          itemCount: state.pokemonDetailsItems.length,
          itemBuilder: (context, index) => ItemStackPokemonWidget(
            pokemonDetails: state.pokemonDetailsItems[index],
          ),
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 15),
        );
      } else if (state is AllPokemonError) {
        return SliverFillRemaining(
          hasScrollBody: false,
          child: Center(
            child: Text(state.errMessage),
          ),
        );
      } else if (state is AllPokemonSearchLoaded) {
        return SliverToBoxAdapter(
          child: ItemStackPokemonWidget(
            pokemonDetails: state.pokemonDetails,
          ),
        );
      }
      return const SliverFillRemaining(
        hasScrollBody: false,
        child: Center(
          child: CircularProgressIndicator(
            color: ColorName.mandy,
          ),
        ),
      );
      //  else if (state is AllPokemonMoreLoading) {
      //   return SliverList.separated(
      //     itemCount: state.pokemonDetailsItems.length + 1,
      //     itemBuilder: (BuildContext context, int index) {
      //       if (index < state.pokemonDetailsItems.length) {
      //         return ItemStackPokemonWidget(
      //           pokemonDetails: state.pokemonDetailsItems[index],
      //         );
      //       }
      //       return const Align(
      //         child: CircularProgressIndicator(
      //           color: ColorName.mandy,
      //         ),
      //       );
      //     },
      //     separatorBuilder: (BuildContext context, int index) =>
      //         const SizedBox(height: 15),
      //   );
      // }
    }, listener: (context, state) async {
      // context.read<AllPokemonCubit>().scrollController.addListener(() async {
      //   final ScrollPosition scrollPosition =
      //       context.read<AllPokemonCubit>().scrollController.position;
      //   if (scrollPosition.pixels >=
      //       scrollPosition.maxScrollExtent -
      //           MediaQuery.sizeOf(context).height / 1.5) {
      //     await context.read<AllPokemonCubit>().getAllPokemon();
      //   }
      // });
    });
  }
}
