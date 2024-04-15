import 'package:flutter/material.dart';
import 'package:pokebook/core/gen/assets.gen.dart';
import 'package:pokebook/features/home/presentation/views/widgets/app_bar_home_widget.dart';
import 'package:pokebook/features/home/presentation/views/widgets/bottom_bar_navigation_widget.dart';
import 'package:pokebook/features/home/presentation/views/widgets/list_items_pokemon_widget.dart';

class BodyHomeWidget extends StatelessWidget {
  const BodyHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.noiseBackground.image().image,
          fit: BoxFit.fill,
        ),
      ),
      child: const CustomScrollView(
        // controller: context.read<AllPokemonCubit>().scrollController,
        slivers: [
          AppBarHomeWidget(),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          ListItemsPokemonWidget(),
          BottomBarNavigationWidget(),
        ],
      ),
    );
  }
}
