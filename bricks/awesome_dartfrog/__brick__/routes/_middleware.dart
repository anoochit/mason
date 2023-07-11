import 'dart:io';

import 'package:blog/blog.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  final userRepository = UserRepository();
  final postRepository = PostRepository();

  return handler
      .use(requestLogger())
      .use(provider<PostRepository>((_) => postRepository))
      .use(provider<UserRepository>((_) => userRepository));
}

// check authorization header
Middleware authHeader() {
  return (handler) {
    return (context) async {
      if (!context.request.headers
          .containsKey(HttpHeaders.authorizationHeader)) {
        return Response(statusCode: HttpStatus.badRequest);
      }

      return handler(context);
    };
  };
}
