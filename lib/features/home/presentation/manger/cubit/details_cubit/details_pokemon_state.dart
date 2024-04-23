part of 'details_pokemon_cubit.dart';

class DetailsState {}

final class DetailsInitial extends DetailsState {}

final class MovePages extends DetailsState {}

final class AnimateStats extends DetailsState {
  final int animateWidth;
  AnimateStats({required this.animateWidth});
}
