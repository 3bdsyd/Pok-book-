import 'package:equatable/equatable.dart';

class Form extends Equatable {
  final String? name;
  final String? url;

  const Form({this.name, this.url});

  factory Form.fromJson(Map<String, dynamic> json) => Form(
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
