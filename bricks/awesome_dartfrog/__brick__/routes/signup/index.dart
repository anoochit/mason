import 'dart:io';

import 'package:blog/repository/user.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  // implement route handler
  final method = context.request.method;
  final user = context.read<UserRepository>();

  if (method.name == 'post') {
    // get body
    final request = await context.request.json() as Map<String, dynamic>;
    final username = request['username'].toString();
    final password = request['password'].toString();
    // create user
    try {
      final response = await user.create(
        username: username,
        password: password,
      );

      return Response.json(body: response.toJson());
    } catch (e) {
      return Response(statusCode: HttpStatus.badRequest);
    }
  } else {
    return Response(statusCode: HttpStatus.badRequest);
  }
}
