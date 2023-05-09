import 'package:flutter_modular/flutter_modular.dart';

void push(
  String route, {
  Object? arguments,
  bool forRoot = false,
}) {
  Modular.to.pushNamed(
    route,
    arguments: arguments,
    forRoot: forRoot,
  );
}

void pushReplacementNamed(
  String route, {
  Object? arguments,
  bool forRoot = false,
}) {
  Modular.to.pushReplacementNamed(
    route,
    arguments: arguments,
    forRoot: forRoot,
  );
}

void popAndPushNamed(
  String route, {
  Object? arguments,
  bool forRoot = false,
}) {
  Modular.to.popAndPushNamed(
    route,
    arguments: arguments,
    forRoot: forRoot,
  );
}

void pop() => Modular.to.pop();
