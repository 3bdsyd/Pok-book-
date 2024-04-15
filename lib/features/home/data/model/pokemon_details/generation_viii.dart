import 'package:equatable/equatable.dart';

import 'icons.dart';

class GenerationViii extends Equatable {
  final Icons? icons;

  const GenerationViii({this.icons});

  factory GenerationViii.fromJson(Map<String, dynamic> json) {
    return GenerationViii(
      icons: json['icons'] == null
          ? null
          : Icons.fromJson(json['icons'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'icons': icons?.toJson(),
      };

  @override
  List<Object?> get props => [icons];
}
