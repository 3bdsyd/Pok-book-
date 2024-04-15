import 'package:equatable/equatable.dart';

import 'omegaruby_alphasapphire.dart';
import 'xy.dart';

class GenerationVi extends Equatable {
  final OmegarubyAlphasapphire? omegarubyAlphasapphire;
  final Xy? xY;

  const GenerationVi({this.omegarubyAlphasapphire, this.xY});

  factory GenerationVi.fromJson(Map<String, dynamic> json) => GenerationVi(
        omegarubyAlphasapphire: json['omegaruby-alphasapphire'] == null
            ? null
            : OmegarubyAlphasapphire.fromJson(
                json['omegaruby-alphasapphire'] as Map<String, dynamic>),
        xY: json['x-y'] == null
            ? null
            : Xy.fromJson(json['x-y'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'omegaruby-alphasapphire': omegarubyAlphasapphire?.toJson(),
        'x-y': xY?.toJson(),
      };

  @override
  List<Object?> get props => [omegarubyAlphasapphire, xY];
}
