import 'package:equatable/equatable.dart';

class Crystal extends Equatable {
  final String? backDefault;
  final String? backShiny;
  final String? backShinyTransparent;
  final String? backTransparent;
  final String? frontDefault;
  final String? frontShiny;
  final String? frontShinyTransparent;
  final String? frontTransparent;

  const Crystal({
    this.backDefault,
    this.backShiny,
    this.backShinyTransparent,
    this.backTransparent,
    this.frontDefault,
    this.frontShiny,
    this.frontShinyTransparent,
    this.frontTransparent,
  });

  factory Crystal.fromJson(Map<String, dynamic> json) => Crystal(
        backDefault: json['back_default'] as String?,
        backShiny: json['back_shiny'] as String?,
        backShinyTransparent: json['back_shiny_transparent'] as String?,
        backTransparent: json['back_transparent'] as String?,
        frontDefault: json['front_default'] as String?,
        frontShiny: json['front_shiny'] as String?,
        frontShinyTransparent: json['front_shiny_transparent'] as String?,
        frontTransparent: json['front_transparent'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'back_default': backDefault,
        'back_shiny': backShiny,
        'back_shiny_transparent': backShinyTransparent,
        'back_transparent': backTransparent,
        'front_default': frontDefault,
        'front_shiny': frontShiny,
        'front_shiny_transparent': frontShinyTransparent,
        'front_transparent': frontTransparent,
      };

  @override
  List<Object?> get props {
    return [
      backDefault,
      backShiny,
      backShinyTransparent,
      backTransparent,
      frontDefault,
      frontShiny,
      frontShinyTransparent,
      frontTransparent,
    ];
  }
}
