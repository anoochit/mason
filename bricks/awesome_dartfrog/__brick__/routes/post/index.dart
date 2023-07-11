import 'dart:io';

import 'package:blog/blog.dart';
import 'package:dart_frog/dart_frog.dart';

extension on Map<String, String> {
  String? authorization(String type) {
    final value = this['Authorization']?.split(' ');
    if (value != null && value.length == 2 && value.first == type) {
      return value.last;
    }
    return null;
  }

  String? bearer() => authorization('Bearer');
}

Future<Response> onRequest(RequestContext context) async {
  // implement route handler
  final method = context.request.method;
  final user = context.read<UserRepository>();
  final post = context.read<PostRepository>();

  if (method.name == 'get') {
    // show all post
    final posts = await post.findAll();
    return Response.json(body: posts.toList());
  } else if (method.name == "post") {
    // create post
    final token = context.request.headers.authorization('Bearer');
    final request = await context.request.json() as Map<String, dynamic>;

    final title = request['title'].toString();
    final content = request['content'].toString();

    // verify token
    if (token != null) {
      final jwt = user.verifyToken(token: token);
      final userId = jwt!.payload['id'].toString();
      final response = await post.create(
        title: title,
        content: content,
        uid: int.parse(userId),
      );

      return Response.json(body: response.toJson());
    } else {
      return Response(statusCode: HttpStatus.unauthorized);
    }
  } else {
    return Response(statusCode: HttpStatus.badRequest);
  }
}
