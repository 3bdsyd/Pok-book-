import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/details_cubit/details_pokemon_cubit.dart';
import 'package:pokebook/shared/widgets/custom_net_image_widget.dart';

class ImageAppBarDetailsWidget extends StatelessWidget {
  const ImageAppBarDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}
