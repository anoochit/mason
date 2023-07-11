import 'dart:io';

import 'package:blog/blog.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  // implement route handler

  final method = context.request.method;

  if (method.name == 'post') {
    final user = context.read<UserRepository>();
    final request = await context.request.json() as Map<String, dynamic>;

    final credential = await user.userCredentialFrom(
      username: request['username'].toString(),
      password: request['password'].toString(),
    );

    if (credential != null) {
      return Response.json(body: {'token': credential});
    } else {
      return Response(statusCode: HttpStatus.unauthorized);
    }
  } else {
    return Response(statusCode: HttpStatus.badRequest);
  }
}
