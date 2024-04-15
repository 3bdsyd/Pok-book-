import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/core/gen/colors.gen.dart';
import 'package:pokebook/core/styles/text_styles.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/view_all_cubit/all_pokemon_cubit.dart';

class AppBarSearchWidget extends StatelessWidget {
  const AppBarSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: context.read<AllPokemonCubit>().pokemonName,
      onChanged: (value) =>
          context.read<AllPokemonCubit>().pokemonSearch(value),
      cursorColor: ColorName.mandy,
      decoration: InputDecoration(
        fillColor: ColorName.white,
        filled: true,
        contentPadding: const EdgeInsets.only(
          left: 6,
          top: 12,
          right: 6,
          bottom: 10,
        ),
        alignLabelWithHint: true,
        hintFadeDuration: Durations.medium4,
        hintText: 'Enter pokemon name',
        hintStyle: TextStyles.style18.copyWith(
          color: ColorName.boulder,
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: ColorName.alto,
        ),
        enabledBorder: _buildBorderFormSearch(),
        focusedBorder: _buildBorderFormSearch(),
        border: _buildBorderFormSearch(),
      ),
    );
  }

  OutlineInputBorder _buildBorderFormSearch() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(
        color: ColorName.mercury,
      ),
    );
  }
}
