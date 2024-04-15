import 'package:equatable/equatable.dart';

class DreamWorld extends Equatable {
  final String? frontDefault;
  final dynamic frontFemale;

  const DreamWorld({this.frontDefault, this.frontFemale});

  factory DreamWorld.fromJson(Map<String, dynamic> json) => DreamWorld(
        frontDefault: json['front_default'] as String?,
        frontFemale: json['front_female'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'front_default': frontDefault,
        'front_female': frontFemale,
      };

  @override
  List<Object?> get props => [frontDefault, frontFemale];
}
