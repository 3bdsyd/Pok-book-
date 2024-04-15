import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokebook/core/gen/colors.gen.dart';
import 'package:pokebook/core/router/app_router.gr.dart';
import 'package:pokebook/core/styles/text_styles.dart';
import 'package:pokebook/features/home/presentation/manger/cubit/search_cubit/search_cubit.dart';
import 'package:pokebook/features/home/presentation/views/widgets/suffix_search_widget.dart';
import 'package:pokebook/shared/widgets/custom_snack_bar_widget.dart';

class SearchElementaryWidget extends StatelessWidget {
  const SearchElementaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (text) => context.read<SearchCubit>().changeText(text),
          style:
              context.read<SearchCubit>().changeColor || state is SearchLoading
                  ? TextStyles.style18
                  : TextStyles.style18.copyWith(color: ColorName.boulder),
          cursorColor: ColorName.mandy,
          controller: context.read<SearchCubit>().pokemonName,
          keyboardType: TextInputType.text,
          decoration: _searchInputDecoration(context, state),
        );
      },
      listener: (context, state) {
        if (state is SearchError) {
          customSnackBar(
            context,
            color: ColorName.mandy,
            text: state.errMessage,
          );
        } else if (state is SearchLoaded) {
          AutoRouter.of(context).push(const HomeRoute());
        }
      },
    );
  }

  InputDecoration _searchInputDecoration(
    BuildContext context,
    SearchState state,
  ) {
    return InputDecoration(
      contentPadding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
        bottom: 20,
      ),
      labelText: 'Enter pokemon name',
      labelStyle: TextStyles.style20,
      suffixIcon: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: SuffixSearchWidget(state: state),
      ),
      border: _searchBorderStyle(),
      enabledBorder: _searchBorderStyle(),
      focusedBorder: _searchBorderStyle(),
    );
  }

  OutlineInputBorder _searchBorderStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(60),
      borderSide: const BorderSide(
        width: 4,
        color: ColorName.mandy,
      ),
    );
  }
}
