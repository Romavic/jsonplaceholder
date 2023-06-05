class UsersEntities {
  int? id;
  String? name;
  String? username;
  String? email;
  AddressEntities? address;
  String? phone;
  String? website;
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

class AddressEntities {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  GeoEntities? geo;

  AddressEntities({this.street, this.suite, this.city, this.zipcode, this.geo});
}

class GeoEntities {
  String? lat;
  String? lng;

  GeoEntities({this.lat, this.lng});
}

class CompanyEntities {
  String? name;
  String? catchPhrase;
  String? bs;

  CompanyEntities({this.name, this.catchPhrase, this.bs});
}
