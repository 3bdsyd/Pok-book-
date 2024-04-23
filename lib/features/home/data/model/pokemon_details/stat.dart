import 'package:equatable/equatable.dart';

class Stat extends Equatable {
  final int? baseStat;
  final int? effort;
  final StatsItem? stat;

  const Stat({this.baseStat, this.effort, this.stat});

  factory Stat.fromJson(Map<String, dynamic> json) => Stat(
        baseStat: json['base_stat'] as int?,
        effort: json['effort'] as int?,
        stat: json['stat'] == null
            ? null
            : StatsItem.fromJson(json['stat'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'base_stat': baseStat,
        'effort': effort,
        'stat': stat?.toJson(),
      };

  @override
  List<Object?> get props => [baseStat, effort, stat];
}
class StatsItem {
  String? name;
  String? url;

  StatsItem({this.name, this.url});

  StatsItem.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}
