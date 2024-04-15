import 'package:equatable/equatable.dart';

class Icons extends Equatable {
  final String? frontDefault;
  final dynamic frontFemale;

  const Icons({this.frontDefault, this.frontFemale});

  factory Icons.fromJson(Map<String, dynamic> json) => Icons(
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
