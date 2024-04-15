import 'package:equatable/equatable.dart';

import 'red_blue.dart';
import 'yellow.dart';

class GenerationI extends Equatable {
  final RedBlue? redBlue;
  final Yellow? yellow;

  const GenerationI({this.redBlue, this.yellow});

  factory GenerationI.fromJson(Map<String, dynamic> json) => GenerationI(
        redBlue: json['red-blue'] == null
            ? null
            : RedBlue.fromJson(json['red-blue'] as Map<String, dynamic>),
        yellow: json['yellow'] == null
            ? null
            : Yellow.fromJson(json['yellow'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'red-blue': redBlue?.toJson(),
        'yellow': yellow?.toJson(),
      };

  @override
  List<Object?> get props => [redBlue, yellow];
}
