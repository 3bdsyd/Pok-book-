import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/core/gen/colors.gen.dart';
import 'package:pokebook/core/styles/text_styles.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/details_cubit/details_pokemon_cubit.dart';

class NavBarDetailsWidget extends StatelessWidget {
  const NavBarDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsPokemonCubit, DetailsState>(
      builder: (context, state) => Container(
        margin: const EdgeInsets.all(19),
        height: 59,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: BottomNavigationBar(
            selectedFontSize: 0,
            backgroundColor: ColorName.mercury2,
            currentIndex: context.read<DetailsPokemonCubit>().currentPage,
            onTap: (index) =>
                context.read<DetailsPokemonCubit>().navigateBetweenPages(index),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              bottomNavigationBarItem('About'),
              bottomNavigationBarItem('Stats'),
              bottomNavigationBarItem('Similar'),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem bottomNavigationBarItem(String text) {
    return BottomNavigationBarItem(
      activeIcon: SizedBox(
        height: 50,
        child: Card(
          surfaceTintColor: ColorName.white,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
            child: FittedBox(
              child: Text(
                text,
                style: TextStyles.style16,
              ),
            ),
          ),
        ),
      ),
      label: '',
      icon: Text(
        text,
        style: TextStyles.style16,
      ),
    );
  }
}
