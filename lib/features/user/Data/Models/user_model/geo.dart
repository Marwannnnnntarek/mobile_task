import 'package:equatable/equatable.dart';

class Geo extends Equatable {
  final String? lat;
  final String? lng;

  const Geo({this.lat, this.lng});

  factory Geo.fromJson(Map<String, dynamic> json) =>
      Geo(lat: json['lat'] as String?, lng: json['lng'] as String?);

  Map<String, dynamic> toJson() => {'lat': lat, 'lng': lng};

  @override
  List<Object?> get props => [lat, lng];
}
