import 'package:flutter/material.dart';
import 'package:jsonplaceholder/app/domain/entities/users_entities.dart';
import 'package:jsonplaceholder/app/presentation/designsystem/text/text_span_ds.dart';

class UserAdapter extends StatelessWidget {
  const UserAdapter({
    Key? key,
    required this.userEntity,
  }) : super(key: key);

  final UsersEntities userEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextSpanDS(
            title: 'Id: ',
            subtitle: userEntity.id.toString(),
          ),
          TextSpanDS(
            title: 'Name: ',
            subtitle: userEntity.name.toString(),
          ),
          TextSpanDS(
            title: 'Username: ',
            subtitle: userEntity.username.toString(),
          ),
          TextSpanDS(
            title: 'Email: ',
            subtitle: userEntity.email.toString(),
          ),
          TextSpanDS(
            title: 'Phone: ',
            subtitle: userEntity.phone.toString(),
          ),
          TextSpanDS(
            title: 'Website: ',
            subtitle: userEntity.website.toString(),
          ),
          TextSpanDS(
            title: 'Street: ',
            subtitle: userEntity.address?.street.toString(),
          ),
          TextSpanDS(
            title: 'Suite: ',
            subtitle: userEntity.address?.suite.toString(),
          ),
          TextSpanDS(
            title: 'City: ',
            subtitle: userEntity.address?.city.toString(),
          ),
          TextSpanDS(
            title: 'Zip Code: ',
            subtitle: userEntity.address?.zipcode.toString(),
          ),
        ],
      ),
    );
  }
}
