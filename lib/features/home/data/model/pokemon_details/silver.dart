import 'package:equatable/equatable.dart';

class Silver extends Equatable {
  final String? backDefault;
  final String? backShiny;
  final String? frontDefault;
  final String? frontShiny;
  final String? frontTransparent;

  const Silver({
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
    this.frontTransparent,
  });

  factory Silver.fromJson(Map<String, dynamic> json) => Silver(
        backDefault: json['back_default'] as String?,
        backShiny: json['back_shiny'] as String?,
        frontDefault: json['front_default'] as String?,
        frontShiny: json['front_shiny'] as String?,
        frontTransparent: json['front_transparent'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'back_default': backDefault,
        'back_shiny': backShiny,
        'front_default': frontDefault,
        'front_shiny': frontShiny,
        'front_transparent': frontTransparent,
      };

  @override
  List<Object?> get props {
    return [
      backDefault,
      backShiny,
      frontDefault,
      frontShiny,
      frontTransparent,
    ];
  }
}
