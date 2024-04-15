import 'package:equatable/equatable.dart';

class Yellow extends Equatable {
  final String? backDefault;
  final String? backGray;
  final String? backTransparent;
  final String? frontDefault;
  final String? frontGray;
  final String? frontTransparent;

  const Yellow({
    this.backDefault,
    this.backGray,
    this.backTransparent,
    this.frontDefault,
    this.frontGray,
    this.frontTransparent,
  });

  factory Yellow.fromJson(Map<String, dynamic> json) => Yellow(
        backDefault: json['back_default'] as String?,
        backGray: json['back_gray'] as String?,
        backTransparent: json['back_transparent'] as String?,
        frontDefault: json['front_default'] as String?,
        frontGray: json['front_gray'] as String?,
        frontTransparent: json['front_transparent'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'back_default': backDefault,
        'back_gray': backGray,
        'back_transparent': backTransparent,
        'front_default': frontDefault,
        'front_gray': frontGray,
        'front_transparent': frontTransparent,
      };

  @override
  List<Object?> get props {
    return [
      backDefault,
      backGray,
      backTransparent,
      frontDefault,
      frontGray,
      frontTransparent,
    ];
  }
}
