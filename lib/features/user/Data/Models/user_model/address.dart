import 'package:equatable/equatable.dart';

import 'geo.dart';

class Address extends Equatable {
  final String? street;
  final String? suite;
  final String? city;
  final String? zipcode;
  final Geo? geo;

  const Address({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    street: json['street'] as String?,
    suite: json['suite'] as String?,
    city: json['city'] as String?,
    zipcode: json['zipcode'] as String?,
    geo:
        json['geo'] == null
            ? null
            : Geo.fromJson(json['geo'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'street': street,
    'suite': suite,
    'city': city,
    'zipcode': zipcode,
    'geo': geo?.toJson(),
  };

  @override
  List<Object?> get props => [street, suite, city, zipcode, geo];
}
