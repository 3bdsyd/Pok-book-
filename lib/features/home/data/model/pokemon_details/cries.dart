import 'package:equatable/equatable.dart';

class Cries extends Equatable {
  final String? latest;
  final String? legacy;

  const Cries({this.latest, this.legacy});

  factory Cries.fromJson(Map<String, dynamic> json) => Cries(
        latest: json['latest'] as String?,
        legacy: json['legacy'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'latest': latest,
        'legacy': legacy,
      };

  @override
  List<Object?> get props => [latest, legacy];
}
