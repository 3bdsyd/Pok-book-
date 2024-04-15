import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/core/gen/colors.gen.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/details_cubit/details_pokemon_cubit.dart';
import 'package:pokebook/shared/widgets/custom_net_image_widget.dart';

class AppBarDetailsWidget extends StatelessWidget {
  const AppBarDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 343,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 283,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.grey, spreadRadius: 5, blurRadius: 5)
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              gradient: LinearGradient(
                colors: [
                  Color(0xff7FCAD1),
                  Color(0xff3DA0A9),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 56,
            child: Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: ColorName.white,
              ),
              child: const Icon(Icons.arrow_left),
            ),
          ),
          Container(
            height: 347,
            width: double.maxFinite,
            color: Colors.transparent,
          ),
          Positioned(
            bottom: 0,
            child: CustomNetImageWidget(
              height: 20,
              urlImage: context
                      .read<DetailsPokemonCubit>()
                      .pokemonDetails
                      .sprites!
                      .other!
                      .dreamWorld!
                      .frontDefault ??
                  'https://www.svgrepo.com/show/340721/no-image.svg',
            ),
          ),
        ],
      ),
    );
  }
}
