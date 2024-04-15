import 'package:equatable/equatable.dart';

class Xy extends Equatable {
  final String? frontDefault;
  final dynamic frontFemale;
  final String? frontShiny;
  final dynamic frontShinyFemale;

  const Xy({
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory Xy.fromJson(Map<String, dynamic> json) => Xy(
        frontDefault: json['front_default'] as String?,
        frontFemale: json['front_female'] as dynamic,
        frontShiny: json['front_shiny'] as String?,
        frontShinyFemale: json['front_shiny_female'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'front_default': frontDefault,
        'front_female': frontFemale,
        'front_shiny': frontShiny,
        'front_shiny_female': frontShinyFemale,
      };

  @override
  List<Object?> get props {
    return [
      frontDefault,
      frontFemale,
      frontShiny,
      frontShinyFemale,
    ];
  }
}
