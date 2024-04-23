import 'package:equatable/equatable.dart';

class Ability extends Equatable {
  final AbilityItem? ability;
  final bool? isHidden;
  final int? slot;

  const Ability({this.ability, this.isHidden, this.slot});

  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        ability: json['ability'] == null
            ? null
            : AbilityItem.fromJson(json['ability'] as Map<String, dynamic>),
        isHidden: json['is_hidden'] as bool?,
        slot: json['slot'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'ability': ability?.toJson(),
        'is_hidden': isHidden,
        'slot': slot,
      };

  @override
  List<Object?> get props => [ability, isHidden, slot];
}
class AbilityItem {
  String? name;
  String? url;

  AbilityItem({this.name, this.url});

  AbilityItem.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}
