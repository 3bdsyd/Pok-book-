import 'package:equatable/equatable.dart';

class Home extends Equatable {
  final String? frontDefault;
  final dynamic frontFemale;
  final String? frontShiny;
  final dynamic frontShinyFemale;

  const Home({
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  factory Home.fromJson(Map<String, dynamic> json) => Home(
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
