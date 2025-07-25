import 'package:equatable/equatable.dart';

class Company extends Equatable {
  final String? name;
  final String? catchPhrase;
  final String? bs;

  const Company({this.name, this.catchPhrase, this.bs});

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    name: json['name'] as String?,
    catchPhrase: json['catchPhrase'] as String?,
    bs: json['bs'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'catchPhrase': catchPhrase,
    'bs': bs,
  };

  @override
  List<Object?> get props => [name, catchPhrase, bs];
}
