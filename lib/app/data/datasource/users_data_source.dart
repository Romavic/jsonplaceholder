import 'package:jsonplaceholder/app/data/dto/response/users_response.dart';

abstract class UsersDataSource {
  Future<List<UsersResponse>> getUsers();
}
