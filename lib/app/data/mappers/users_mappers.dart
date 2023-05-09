import 'package:jsonplaceholder/app/data/dto/response/users_response.dart';
import 'package:jsonplaceholder/app/data/mappers/mapper.dart';
import 'package:jsonplaceholder/app/domain/entities/users_entities.dart';

class UserMapper implements Mapper<List<UsersResponse>, List<UsersEntities>> {
  @override
  List<UsersEntities> map(List<UsersResponse> data) {
    return data.map((response) {
      return UsersEntities(
        id: response.id,
        name: response.name,
        username: response.username,
        email: response.email,
        address: AddressMapper().map(response.address),
        phone: response.phone,
        website: response.website,
        company: CompanyMapper().map(response.company),
      );
    }).toList();
  }
}

class AddressMapper implements Mapper<AddressResponse, AddressEntities> {
  @override
  AddressEntities map(AddressResponse? data) {
    return AddressEntities(
      street: data?.street,
      suite: data?.suite,
      city: data?.city,
      zipcode: data?.zipcode,
      geo: GeoMapper().map(data?.geo),
    );
  }
}

class GeoMapper implements Mapper<GeoResponse, GeoEntities> {
  @override
  GeoEntities map(GeoResponse? data) {
    return GeoEntities(
      lat: data?.lat,
      lng: data?.lng,
    );
  }
}

class CompanyMapper implements Mapper<CompanyResponse, CompanyEntities> {
  @override
  CompanyEntities map(CompanyResponse? data) {
    return CompanyEntities(
      name: data?.name,
      catchPhrase: data?.catchPhrase,
      bs: data?.bs,
    );
  }
}
