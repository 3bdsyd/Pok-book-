import 'package:equatable/equatable.dart';
import 'result.dart';

class AllPokemon extends Equatable {
  final int? count;
  final String? next;
  final dynamic previous;
  final List<Result>? results;

  const AllPokemon({this.count, this.next, this.previous, this.results});

  factory AllPokemon.fromJson(Map<String, dynamic> json) => AllPokemon(
        count: json['count'] as int?,
        next: json['next'] as String?,
        previous: json['previous'] as dynamic,
        results: (json['results'] as List<dynamic>?)
            ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'count': count,
        'next': next,
        'previous': previous,
        'results': results?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [count, next, previous, results];
}
