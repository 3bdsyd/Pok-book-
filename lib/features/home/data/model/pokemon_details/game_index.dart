import 'package:equatable/equatable.dart';

import 'version.dart';

class GameIndex extends Equatable {
  final int? gameIndex;
  final Version? version;

  const GameIndex({this.gameIndex, this.version});

  factory GameIndex.fromJson(Map<String, dynamic> json) => GameIndex(
        gameIndex: json['game_index'] as int?,
        version: json['version'] == null
            ? null
            : Version.fromJson(json['version'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'game_index': gameIndex,
        'version': version?.toJson(),
      };

  @override
  List<Object?> get props => [gameIndex, version];
}
