import 'dart:convert';

import 'package:blog/blog.dart';
import 'package:blog/src/generated/prisma/prisma_client.dart';
import 'package:crypto/crypto.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

class UserRepository {
  ///
  Future<Iterable<User>> findAll() async {
    return prisma.user.findMany();
  }

  ///
  Future<User> create({
    required String username,
    required String password,
  }) async {
    final hash = sha1.convert(utf8.encode(password)).toString();
    final user = await prisma.user.create(
      data: UserCreateInput(
        username: username,
        password: hash,
      ),
    );
    return user;
  }

  ///
  Future<String?> userCredentialFrom({
    required String username,
    required String password,
  }) async {
    final hash = sha1.convert(utf8.encode(password)).toString();
    final user = await prisma.user.findFirst(
      where: UserWhereInput(
        username: StringFilter(equals: username),
        password: StringFilter(equals: hash),
      ),
    );

    if (user != null) {
      final jwt = JWT(
        {
          'id': user.id,
          'username': user.username,
        },
      );

      final token = jwt.sign(SecretKey('secret passphrase'));

      return token;
    } else {
      return null;
    }
  }

  JWT? verifyToken({required String token}) {
    try {
      // Verify a token
      final jwt = JWT.verify(token, SecretKey('secret passphrase'));
      return jwt;
    } catch (e) {
      return null;
    }
  }
}
