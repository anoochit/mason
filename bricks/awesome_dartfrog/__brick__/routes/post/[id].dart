import 'dart:io';

import 'package:blog/blog.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(
  RequestContext context,
  String id,
) async {
  // implement route handler
  final method = context.request.method;
  final post = context.read<PostRepository>();
  int? postId = int.tryParse(id);

  // no id return bad resquest
  if (postId == null) {
    return Response(statusCode: HttpStatus.badRequest);
  }

  if (method.name == 'get') {
    // find post by id
    try {
      final response = await post.findPostById(id: postId);
      return Response.json(body: response.toJson());
    } catch (e) {
      return Response(statusCode: HttpStatus.notFound);
    }
  } else {
    return Response(statusCode: HttpStatus.badRequest);
  }
}
