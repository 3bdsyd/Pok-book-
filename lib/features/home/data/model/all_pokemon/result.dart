import 'package:equatable/equatable.dart';

class Result extends Equatable {
  final String? name;
  final String? url;

  const Result({this.name, this.url});

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        name: json['name'] as String?,
        url: json['url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
      };

  @override
  List<Object?> get props => [name, url];
}
