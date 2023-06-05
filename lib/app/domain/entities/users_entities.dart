import 'package:hive/hive.dart';

part 'users_entities.g.dart';

@HiveType(typeId: 0)
class UsersEntities extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? username;
  @HiveField(3)
  String? email;
  @HiveField(4)
  AddressEntities? address;
  @HiveField(5)
  String? phone;
  @HiveField(6)
  String? website;
  @HiveField(7)
  CompanyEntities? company;

  UsersEntities({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });
}

@HiveType(typeId: 1)
class AddressEntities extends HiveObject{
  @HiveField(0)
  String? street;
  @HiveField(1)
  String? suite;
  @HiveField(2)
  String? city;
  @HiveField(3)
  String? zipcode;
  @HiveField(4)
  GeoEntities? geo;

  AddressEntities({this.street, this.suite, this.city, this.zipcode, this.geo});
}

@HiveType(typeId: 2)
class GeoEntities extends HiveObject{
  @HiveField(0)
  String? lat;
  @HiveField(1)
  String? lng;

  GeoEntities({this.lat, this.lng});
}

@HiveType(typeId: 3)
class CompanyEntities extends HiveObject{
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? catchPhrase;
  @HiveField(2)
  String? bs;

  CompanyEntities({this.name, this.catchPhrase, this.bs});
}
