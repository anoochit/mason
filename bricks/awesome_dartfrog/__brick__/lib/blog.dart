/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

import 'dart:io';

import 'package:blog/src/generated/prisma/prisma_client.dart';
import 'package:orm/logger.dart';

export 'repository/post.dart';
export 'repository/user.dart';
export 'src/blog_base.dart';

//  Export any libraries intended for clients of this package.
final prisma = PrismaClient(
  stdout: Event.values, // print all events to the console
  datasources: Datasources(
    db: Platform.environment['DATABASE_URL'],
  ),
);
