import 'package:jsonplaceholder/app/data/datasource/users_data_source.dart';
import 'package:jsonplaceholder/app/data/dto/response/users_response.dart';
import 'package:jsonplaceholder/app/data/service/api/api.dart';

class UsersDataSourceImpl implements UsersDataSource {
  final Api api;

  UsersDataSourceImpl({required this.api});

  @override
  Future<List<UsersResponse>> getUsers() async {
    final response = await api.getEndpoint("users");
    final List<dynamic> jsonList = response.data;
    return jsonList.map((json) => UsersResponse.fromJson(json)).toList();
  }
}
