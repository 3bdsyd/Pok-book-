import 'package:flutter/material.dart';
import 'package:pokebook/core/gen/colors.gen.dart';
import 'package:pokebook/features/home/presentation/views/widgets/app_bar_items_widget.dart';
import 'package:pokebook/features/home/presentation/views/widgets/search_app_bar_widget.dart';

class AppBarHomeWidget extends StatelessWidget {
  const AppBarHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      shadowColor: ColorName.seashell,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
      toolbarHeight: 175,
      backgroundColor: ColorName.white,
      surfaceTintColor: ColorName.mandy,
      floating: true,
      automaticallyImplyLeading: false,
      title: Column(
        children: [
          AppBarItemsWidget(),
          SizedBox(height: 30),
          AppBarSearchWidget(),
        ],
      ),
    );
  }
}
