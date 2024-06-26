import 'package:equatable/equatable.dart';

import 'icons.dart';
import 'ultra_sun_ultra_moon.dart';

class GenerationVii extends Equatable {
  final Icons? icons;
  final UltraSunUltraMoon? ultraSunUltraMoon;

  const GenerationVii({this.icons, this.ultraSunUltraMoon});

  factory GenerationVii.fromJson(Map<String, dynamic> json) => GenerationVii(
        icons: json['icons'] == null
            ? null
            : Icons.fromJson(json['icons'] as Map<String, dynamic>),
        ultraSunUltraMoon: json['ultra-sun-ultra-moon'] == null
            ? null
            : UltraSunUltraMoon.fromJson(
                json['ultra-sun-ultra-moon'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'icons': icons?.toJson(),
        'ultra-sun-ultra-moon': ultraSunUltraMoon?.toJson(),
      };

  @override
  List<Object?> get props => [icons, ultraSunUltraMoon];
}
