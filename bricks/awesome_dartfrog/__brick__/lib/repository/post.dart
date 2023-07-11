import 'package:blog/blog.dart';
import 'package:blog/src/generated/prisma/prisma_client.dart';

class PostRepository {
  /// show all post
  Future<Iterable<Post>> findAll() async {
    return prisma.post.findMany();
  }

  /// create post
  Future<Post> create({
    required String title,
    required String content,
    required int uid,
  }) async {
    final post = await prisma.post.create(
      data: PostCreateInput(
        title: title,
        content: content,
        user: UserCreateNestedOneWithoutPostInput(
          connect: UserWhereUniqueInput(id: uid),
        ),
      ),
    );
    return post;
  }

  Future<Post> findPostById({required int id}) async {
    final post = await prisma.post.findUniqueOrThrow(
      where: PostWhereUniqueInput(id: id),
    );

    return post;
  }
}
