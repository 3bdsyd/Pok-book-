import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/core/gen/assets.gen.dart';
import 'package:pokebook/core/gen/colors.gen.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/search_cubit/search_cubit.dart';

class SuffixSearchWidget extends StatelessWidget {
  final SearchState state;
  const SuffixSearchWidget({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Card(
        color: ColorName.mandy,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: state is SearchLoading
            ? const Padding(
                padding: EdgeInsets.all(10),
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: ColorName.white,
                ),
              )
            : GestureDetector(
                onTap: () => context.read<SearchCubit>().getDetailsPokemon(),
                onLongPress: () => HapticFeedback.vibrate(),
                child: Assets.icons.search.svg(
                  fit: BoxFit.scaleDown,
                ),
              ),
      ),
    );
  }
}
