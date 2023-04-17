import 'package:riverpod_refresh/models/resource_mdl.dart';

class User extends Resource {
  final String name;
  final String username;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  User.fromMap(Map<String, dynamic> map)
      : name = map['name'] as String,
        username = map['username'] as String,
        email = map['email'] as String,
        address = Address.fromMap(map['address'] as Map<String, dynamic>),
        phone = map['phone'] as String,
        website = map['website'] as String,
        company = Company.fromMap(map['company'] as Map<String, dynamic>),
        super.fromMap(map);
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company.fromMap(Map<String, dynamic> map)
      : name = map['name'] as String,
        catchPhrase = map['catchPhrase'] as String,
        bs = map['bs'] as String;
}

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geo geo;

  Address.fromMap(Map<String, dynamic> map)
      : street = map['street'] as String,
        suite = map['suite'] as String,
        city = map['city'] as String,
        zipcode = map['zipcode'] as String,
        geo = Geo.fromMap(map['geo'] as Map<String, dynamic>);
}

class Geo {
  final String lat;
  final String lng;

  Geo.fromMap(Map<String, dynamic> map)
      : lat = map['lat'] as String,
        lng = map['lng'] as String;
}
