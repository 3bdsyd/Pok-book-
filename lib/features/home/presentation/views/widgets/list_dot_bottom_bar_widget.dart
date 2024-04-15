import 'package:flutter/material.dart';

class ListDotBottomBarWidget extends StatelessWidget {
  const ListDotBottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Container(
          alignment: Alignment.bottomCenter,
          margin: const EdgeInsets.symmetric(
            horizontal: 2,
            vertical: 10,
          ),
          width: 5,
          height: 5,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
