// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum PostScalarFieldEnum implements _i1.PrismaEnum {
  id,
  title,
  content,
  userId,
  createdAt;

  @override
  String? get originalName => null;
}

enum UserScalarFieldEnum implements _i1.PrismaEnum {
  id,
  username,
  password,
  createdAt;

  @override
  String? get originalName => null;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

enum QueryMode implements _i1.PrismaEnum {
  @JsonValue('default')
  $default(r'default'),
  insensitive;

  const QueryMode([this.originalName]);

  @override
  final String? originalName;
}

enum NullsOrder implements _i1.PrismaEnum {
  first,
  last;

  @override
  String? get originalName => null;
}

@_i1.jsonSerializable
class PostWhereInput implements _i1.JsonSerializable {
  const PostWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.content,
    this.userId,
    this.createdAt,
    this.user,
  });

  factory PostWhereInput.fromJson(Map<String, dynamic> json) =>
      _$PostWhereInputFromJson(json);

  final Iterable<PostWhereInput>? AND;

  final Iterable<PostWhereInput>? OR;

  final Iterable<PostWhereInput>? NOT;

  final IntFilter? id;

  final StringFilter? title;

  final StringFilter? content;

  final IntNullableFilter? userId;

  final DateTimeFilter? createdAt;

  final UserRelationFilter? user;

  @override
  Map<String, dynamic> toJson() => _$PostWhereInputToJson(this);
}

@_i1.jsonSerializable
class PostOrderByWithRelationInput implements _i1.JsonSerializable {
  const PostOrderByWithRelationInput({
    this.id,
    this.title,
    this.content,
    this.userId,
    this.createdAt,
    this.user,
  });

  factory PostOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$PostOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? content;

  final SortOrder? userId;

  final SortOrder? createdAt;

  final UserOrderByWithRelationInput? user;

  @override
  Map<String, dynamic> toJson() => _$PostOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class PostWhereUniqueInput implements _i1.JsonSerializable {
  const PostWhereUniqueInput({this.id});

  factory PostWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$PostWhereUniqueInputFromJson(json);

  final int? id;

  @override
  Map<String, dynamic> toJson() => _$PostWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class PostOrderByWithAggregationInput implements _i1.JsonSerializable {
  const PostOrderByWithAggregationInput({
    this.id,
    this.title,
    this.content,
    this.userId,
    this.createdAt,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory PostOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$PostOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? content;

  final SortOrder? userId;

  final SortOrder? createdAt;

  @JsonKey(name: r'_count')
  final PostCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final PostAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final PostMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final PostMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final PostSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$PostOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class PostScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const PostScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.content,
    this.userId,
    this.createdAt,
  });

  factory PostScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$PostScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<PostScalarWhereWithAggregatesInput>? AND;

  final Iterable<PostScalarWhereWithAggregatesInput>? OR;

  final Iterable<PostScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final StringWithAggregatesFilter? title;

  final StringWithAggregatesFilter? content;

  final IntNullableWithAggregatesFilter? userId;

  final DateTimeWithAggregatesFilter? createdAt;

  @override
  Map<String, dynamic> toJson() =>
      _$PostScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class UserWhereInput implements _i1.JsonSerializable {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.username,
    this.password,
    this.createdAt,
    this.post,
  });

  factory UserWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereInputFromJson(json);

  final Iterable<UserWhereInput>? AND;

  final Iterable<UserWhereInput>? OR;

  final Iterable<UserWhereInput>? NOT;

  final IntFilter? id;

  final StringFilter? username;

  final StringFilter? password;

  final DateTimeFilter? createdAt;

  final PostListRelationFilter? post;

  @override
  Map<String, dynamic> toJson() => _$UserWhereInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithRelationInput implements _i1.JsonSerializable {
  const UserOrderByWithRelationInput({
    this.id,
    this.username,
    this.password,
    this.createdAt,
    this.post,
  });

  factory UserOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? createdAt;

  final PostOrderByRelationAggregateInput? post;

  @override
  Map<String, dynamic> toJson() => _$UserOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class UserWhereUniqueInput implements _i1.JsonSerializable {
  const UserWhereUniqueInput({
    this.id,
    this.username,
  });

  factory UserWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereUniqueInputFromJson(json);

  final int? id;

  final String? username;

  @override
  Map<String, dynamic> toJson() => _$UserWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithAggregationInput implements _i1.JsonSerializable {
  const UserOrderByWithAggregationInput({
    this.id,
    this.username,
    this.password,
    this.createdAt,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory UserOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? createdAt;

  @JsonKey(name: r'_count')
  final UserCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final UserAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final UserMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final UserMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final UserSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$UserOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class UserScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.username,
    this.password,
    this.createdAt,
  });

  factory UserScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<UserScalarWhereWithAggregatesInput>? AND;

  final Iterable<UserScalarWhereWithAggregatesInput>? OR;

  final Iterable<UserScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? id;

  final StringWithAggregatesFilter? username;

  final StringWithAggregatesFilter? password;

  final DateTimeWithAggregatesFilter? createdAt;

  @override
  Map<String, dynamic> toJson() =>
      _$UserScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class PostCreateInput implements _i1.JsonSerializable {
  const PostCreateInput({
    required this.title,
    required this.content,
    this.createdAt,
    this.user,
  });

  factory PostCreateInput.fromJson(Map<String, dynamic> json) =>
      _$PostCreateInputFromJson(json);

  final String title;

  final String content;

  final DateTime? createdAt;

  final UserCreateNestedOneWithoutPostInput? user;

  @override
  Map<String, dynamic> toJson() => _$PostCreateInputToJson(this);
}

@_i1.jsonSerializable
class PostUncheckedCreateInput implements _i1.JsonSerializable {
  const PostUncheckedCreateInput({
    this.id,
    required this.title,
    required this.content,
    this.userId,
    this.createdAt,
  });

  factory PostUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$PostUncheckedCreateInputFromJson(json);

  final int? id;

  final String title;

  final String content;

  final int? userId;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => _$PostUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class PostUpdateInput implements _i1.JsonSerializable {
  const PostUpdateInput({
    this.title,
    this.content,
    this.createdAt,
    this.user,
  });

  factory PostUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$PostUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? content;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  final UserUpdateOneWithoutPostNestedInput? user;

  @override
  Map<String, dynamic> toJson() => _$PostUpdateInputToJson(this);
}

@_i1.jsonSerializable
class PostUncheckedUpdateInput implements _i1.JsonSerializable {
  const PostUncheckedUpdateInput({
    this.id,
    this.title,
    this.content,
    this.userId,
    this.createdAt,
  });

  factory PostUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$PostUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? content;

  final NullableIntFieldUpdateOperationsInput? userId;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() => _$PostUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class PostCreateManyInput implements _i1.JsonSerializable {
  const PostCreateManyInput({
    this.id,
    required this.title,
    required this.content,
    this.userId,
    this.createdAt,
  });

  factory PostCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$PostCreateManyInputFromJson(json);

  final int? id;

  final String title;

  final String content;

  final int? userId;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => _$PostCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class PostUpdateManyMutationInput implements _i1.JsonSerializable {
  const PostUpdateManyMutationInput({
    this.title,
    this.content,
    this.createdAt,
  });

  factory PostUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$PostUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? content;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() => _$PostUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class PostUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const PostUncheckedUpdateManyInput({
    this.id,
    this.title,
    this.content,
    this.userId,
    this.createdAt,
  });

  factory PostUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$PostUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? content;

  final NullableIntFieldUpdateOperationsInput? userId;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() => _$PostUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateInput implements _i1.JsonSerializable {
  const UserCreateInput({
    required this.username,
    required this.password,
    this.createdAt,
    this.post,
  });

  factory UserCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateInputFromJson(json);

  final String username;

  final String password;

  final DateTime? createdAt;

  final PostCreateNestedManyWithoutUserInput? post;

  @override
  Map<String, dynamic> toJson() => _$UserCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateInput implements _i1.JsonSerializable {
  const UserUncheckedCreateInput({
    this.id,
    required this.username,
    required this.password,
    this.createdAt,
    this.post,
  });

  factory UserUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedCreateInputFromJson(json);

  final int? id;

  final String username;

  final String password;

  final DateTime? createdAt;

  final PostUncheckedCreateNestedManyWithoutUserInput? post;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateInput implements _i1.JsonSerializable {
  const UserUpdateInput({
    this.username,
    this.password,
    this.createdAt,
    this.post,
  });

  factory UserUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  final PostUpdateManyWithoutUserNestedInput? post;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateInput({
    this.id,
    this.username,
    this.password,
    this.createdAt,
    this.post,
  });

  factory UserUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  final PostUncheckedUpdateManyWithoutUserNestedInput? post;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateManyInput implements _i1.JsonSerializable {
  const UserCreateManyInput({
    this.id,
    required this.username,
    required this.password,
    this.createdAt,
  });

  factory UserCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateManyInputFromJson(json);

  final int? id;

  final String username;

  final String password;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateManyMutationInput implements _i1.JsonSerializable {
  const UserUpdateManyMutationInput({
    this.username,
    this.password,
    this.createdAt,
  });

  factory UserUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateManyInput({
    this.id,
    this.username,
    this.password,
    this.createdAt,
  });

  factory UserUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class IntFilter implements _i1.JsonSerializable {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntFilter.fromJson(Map<String, dynamic> json) =>
      _$IntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntFilterToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class IntNullableFilter implements _i1.JsonSerializable {
  const IntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$IntNullableFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeFilter implements _i1.JsonSerializable {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory DateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$DateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class UserRelationFilter implements _i1.JsonSerializable {
  const UserRelationFilter({
    this.$is,
    this.isNot,
  });

  factory UserRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$UserRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final UserWhereInput? $is;

  final UserWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$UserRelationFilterToJson(this);
}

@_i1.jsonSerializable
class SortOrderInput implements _i1.JsonSerializable {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  factory SortOrderInput.fromJson(Map<String, dynamic> json) =>
      _$SortOrderInputFromJson(json);

  final SortOrder sort;

  final NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => _$SortOrderInputToJson(this);
}

@_i1.jsonSerializable
class PostCountOrderByAggregateInput implements _i1.JsonSerializable {
  const PostCountOrderByAggregateInput({
    this.id,
    this.title,
    this.content,
    this.userId,
    this.createdAt,
  });

  factory PostCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$PostCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? content;

  final SortOrder? userId;

  final SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => _$PostCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class PostAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const PostAvgOrderByAggregateInput({
    this.id,
    this.userId,
  });

  factory PostAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$PostAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => _$PostAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class PostMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const PostMaxOrderByAggregateInput({
    this.id,
    this.title,
    this.content,
    this.userId,
    this.createdAt,
  });

  factory PostMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$PostMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? content;

  final SortOrder? userId;

  final SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => _$PostMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class PostMinOrderByAggregateInput implements _i1.JsonSerializable {
  const PostMinOrderByAggregateInput({
    this.id,
    this.title,
    this.content,
    this.userId,
    this.createdAt,
  });

  factory PostMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$PostMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? title;

  final SortOrder? content;

  final SortOrder? userId;

  final SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => _$PostMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class PostSumOrderByAggregateInput implements _i1.JsonSerializable {
  const PostSumOrderByAggregateInput({
    this.id,
    this.userId,
  });

  factory PostSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$PostSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => _$PostSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class IntWithAggregatesFilter implements _i1.JsonSerializable {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory IntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$IntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class IntNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const IntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory IntNullableWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntNullableWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$IntNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory DateTimeWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$DateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class PostListRelationFilter implements _i1.JsonSerializable {
  const PostListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory PostListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$PostListRelationFilterFromJson(json);

  final PostWhereInput? every;

  final PostWhereInput? some;

  final PostWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$PostListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class PostOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const PostOrderByRelationAggregateInput({this.$count});

  factory PostOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$PostOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$PostOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserCountOrderByAggregateInput implements _i1.JsonSerializable {
  const UserCountOrderByAggregateInput({
    this.id,
    this.username,
    this.password,
    this.createdAt,
  });

  factory UserCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const UserAvgOrderByAggregateInput({this.id});

  factory UserAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserAvgOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() => _$UserAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.username,
    this.password,
    this.createdAt,
  });

  factory UserMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMinOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMinOrderByAggregateInput({
    this.id,
    this.username,
    this.password,
    this.createdAt,
  });

  factory UserMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserSumOrderByAggregateInput implements _i1.JsonSerializable {
  const UserSumOrderByAggregateInput({this.id});

  factory UserSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserSumOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  @override
  Map<String, dynamic> toJson() => _$UserSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateNestedOneWithoutPostInput implements _i1.JsonSerializable {
  const UserCreateNestedOneWithoutPostInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory UserCreateNestedOneWithoutPostInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserCreateNestedOneWithoutPostInputFromJson(json);

  final UserCreateWithoutPostInput? create;

  final UserCreateOrConnectWithoutPostInput? connectOrCreate;

  final UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$UserCreateNestedOneWithoutPostInputToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class DateTimeFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const DateTimeFieldUpdateOperationsInput({this.set});

  factory DateTimeFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DateTimeFieldUpdateOperationsInputFromJson(json);

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() =>
      _$DateTimeFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateOneWithoutPostNestedInput implements _i1.JsonSerializable {
  const UserUpdateOneWithoutPostNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  factory UserUpdateOneWithoutPostNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUpdateOneWithoutPostNestedInputFromJson(json);

  final UserCreateWithoutPostInput? create;

  final UserCreateOrConnectWithoutPostInput? connectOrCreate;

  final UserUpsertWithoutPostInput? upsert;

  final bool? disconnect;

  final bool? delete;

  final UserWhereUniqueInput? connect;

  final UserUpdateWithoutPostInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUpdateOneWithoutPostNestedInputToJson(this);
}

@_i1.jsonSerializable
class IntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory IntFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$IntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => _$IntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NullableIntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const NullableIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory NullableIntFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableIntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableIntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class PostCreateNestedManyWithoutUserInput implements _i1.JsonSerializable {
  const PostCreateNestedManyWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory PostCreateNestedManyWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$PostCreateNestedManyWithoutUserInputFromJson(json);

  final Iterable<PostCreateWithoutUserInput>? create;

  final Iterable<PostCreateOrConnectWithoutUserInput>? connectOrCreate;

  final PostCreateManyUserInputEnvelope? createMany;

  final Iterable<PostWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$PostCreateNestedManyWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class PostUncheckedCreateNestedManyWithoutUserInput
    implements _i1.JsonSerializable {
  const PostUncheckedCreateNestedManyWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory PostUncheckedCreateNestedManyWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$PostUncheckedCreateNestedManyWithoutUserInputFromJson(json);

  final Iterable<PostCreateWithoutUserInput>? create;

  final Iterable<PostCreateOrConnectWithoutUserInput>? connectOrCreate;

  final PostCreateManyUserInputEnvelope? createMany;

  final Iterable<PostWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$PostUncheckedCreateNestedManyWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class PostUpdateManyWithoutUserNestedInput implements _i1.JsonSerializable {
  const PostUpdateManyWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory PostUpdateManyWithoutUserNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$PostUpdateManyWithoutUserNestedInputFromJson(json);

  final Iterable<PostCreateWithoutUserInput>? create;

  final Iterable<PostCreateOrConnectWithoutUserInput>? connectOrCreate;

  final Iterable<PostUpsertWithWhereUniqueWithoutUserInput>? upsert;

  final PostCreateManyUserInputEnvelope? createMany;

  final Iterable<PostWhereUniqueInput>? set;

  final Iterable<PostWhereUniqueInput>? disconnect;

  final Iterable<PostWhereUniqueInput>? delete;

  final Iterable<PostWhereUniqueInput>? connect;

  final Iterable<PostUpdateWithWhereUniqueWithoutUserInput>? update;

  final Iterable<PostUpdateManyWithWhereWithoutUserInput>? updateMany;

  final Iterable<PostScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$PostUpdateManyWithoutUserNestedInputToJson(this);
}

@_i1.jsonSerializable
class PostUncheckedUpdateManyWithoutUserNestedInput
    implements _i1.JsonSerializable {
  const PostUncheckedUpdateManyWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory PostUncheckedUpdateManyWithoutUserNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$PostUncheckedUpdateManyWithoutUserNestedInputFromJson(json);

  final Iterable<PostCreateWithoutUserInput>? create;

  final Iterable<PostCreateOrConnectWithoutUserInput>? connectOrCreate;

  final Iterable<PostUpsertWithWhereUniqueWithoutUserInput>? upsert;

  final PostCreateManyUserInputEnvelope? createMany;

  final Iterable<PostWhereUniqueInput>? set;

  final Iterable<PostWhereUniqueInput>? disconnect;

  final Iterable<PostWhereUniqueInput>? delete;

  final Iterable<PostWhereUniqueInput>? connect;

  final Iterable<PostUpdateWithWhereUniqueWithoutUserInput>? update;

  final Iterable<PostUpdateManyWithWhereWithoutUserInput>? updateMany;

  final Iterable<PostScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$PostUncheckedUpdateManyWithoutUserNestedInputToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntNullableFilter implements _i1.JsonSerializable {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntNullableFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeFilter implements _i1.JsonSerializable {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedDateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedDateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedDateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedIntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$NestedIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatFilter implements _i1.JsonSerializable {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedIntNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedIntNullableWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedIntNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatNullableFilter implements _i1.JsonSerializable {
  const NestedFloatNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatNullableFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedDateTimeWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedDateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedDateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class UserCreateWithoutPostInput implements _i1.JsonSerializable {
  const UserCreateWithoutPostInput({
    required this.username,
    required this.password,
    this.createdAt,
  });

  factory UserCreateWithoutPostInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateWithoutPostInputFromJson(json);

  final String username;

  final String password;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserCreateWithoutPostInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateWithoutPostInput implements _i1.JsonSerializable {
  const UserUncheckedCreateWithoutPostInput({
    this.id,
    required this.username,
    required this.password,
    this.createdAt,
  });

  factory UserUncheckedCreateWithoutPostInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUncheckedCreateWithoutPostInputFromJson(json);

  final int? id;

  final String username;

  final String password;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUncheckedCreateWithoutPostInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateOrConnectWithoutPostInput implements _i1.JsonSerializable {
  const UserCreateOrConnectWithoutPostInput({
    required this.where,
    required this.create,
  });

  factory UserCreateOrConnectWithoutPostInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserCreateOrConnectWithoutPostInputFromJson(json);

  final UserWhereUniqueInput where;

  final UserCreateWithoutPostInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$UserCreateOrConnectWithoutPostInputToJson(this);
}

@_i1.jsonSerializable
class UserUpsertWithoutPostInput implements _i1.JsonSerializable {
  const UserUpsertWithoutPostInput({
    required this.update,
    required this.create,
  });

  factory UserUpsertWithoutPostInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpsertWithoutPostInputFromJson(json);

  final UserUpdateWithoutPostInput update;

  final UserCreateWithoutPostInput create;

  @override
  Map<String, dynamic> toJson() => _$UserUpsertWithoutPostInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateWithoutPostInput implements _i1.JsonSerializable {
  const UserUpdateWithoutPostInput({
    this.username,
    this.password,
    this.createdAt,
  });

  factory UserUpdateWithoutPostInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateWithoutPostInputFromJson(json);

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateWithoutPostInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateWithoutPostInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateWithoutPostInput({
    this.id,
    this.username,
    this.password,
    this.createdAt,
  });

  factory UserUncheckedUpdateWithoutPostInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUncheckedUpdateWithoutPostInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUncheckedUpdateWithoutPostInputToJson(this);
}

@_i1.jsonSerializable
class PostCreateWithoutUserInput implements _i1.JsonSerializable {
  const PostCreateWithoutUserInput({
    required this.title,
    required this.content,
    this.createdAt,
  });

  factory PostCreateWithoutUserInput.fromJson(Map<String, dynamic> json) =>
      _$PostCreateWithoutUserInputFromJson(json);

  final String title;

  final String content;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => _$PostCreateWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class PostUncheckedCreateWithoutUserInput implements _i1.JsonSerializable {
  const PostUncheckedCreateWithoutUserInput({
    this.id,
    required this.title,
    required this.content,
    this.createdAt,
  });

  factory PostUncheckedCreateWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$PostUncheckedCreateWithoutUserInputFromJson(json);

  final int? id;

  final String title;

  final String content;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() =>
      _$PostUncheckedCreateWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class PostCreateOrConnectWithoutUserInput implements _i1.JsonSerializable {
  const PostCreateOrConnectWithoutUserInput({
    required this.where,
    required this.create,
  });

  factory PostCreateOrConnectWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$PostCreateOrConnectWithoutUserInputFromJson(json);

  final PostWhereUniqueInput where;

  final PostCreateWithoutUserInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$PostCreateOrConnectWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class PostCreateManyUserInputEnvelope implements _i1.JsonSerializable {
  const PostCreateManyUserInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory PostCreateManyUserInputEnvelope.fromJson(Map<String, dynamic> json) =>
      _$PostCreateManyUserInputEnvelopeFromJson(json);

  final Iterable<PostCreateManyUserInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$PostCreateManyUserInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class PostUpsertWithWhereUniqueWithoutUserInput
    implements _i1.JsonSerializable {
  const PostUpsertWithWhereUniqueWithoutUserInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory PostUpsertWithWhereUniqueWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$PostUpsertWithWhereUniqueWithoutUserInputFromJson(json);

  final PostWhereUniqueInput where;

  final PostUpdateWithoutUserInput update;

  final PostCreateWithoutUserInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$PostUpsertWithWhereUniqueWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class PostUpdateWithWhereUniqueWithoutUserInput
    implements _i1.JsonSerializable {
  const PostUpdateWithWhereUniqueWithoutUserInput({
    required this.where,
    required this.data,
  });

  factory PostUpdateWithWhereUniqueWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$PostUpdateWithWhereUniqueWithoutUserInputFromJson(json);

  final PostWhereUniqueInput where;

  final PostUpdateWithoutUserInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$PostUpdateWithWhereUniqueWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class PostUpdateManyWithWhereWithoutUserInput implements _i1.JsonSerializable {
  const PostUpdateManyWithWhereWithoutUserInput({
    required this.where,
    required this.data,
  });

  factory PostUpdateManyWithWhereWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$PostUpdateManyWithWhereWithoutUserInputFromJson(json);

  final PostScalarWhereInput where;

  final PostUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$PostUpdateManyWithWhereWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class PostScalarWhereInput implements _i1.JsonSerializable {
  const PostScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.title,
    this.content,
    this.userId,
    this.createdAt,
  });

  factory PostScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$PostScalarWhereInputFromJson(json);

  final Iterable<PostScalarWhereInput>? AND;

  final Iterable<PostScalarWhereInput>? OR;

  final Iterable<PostScalarWhereInput>? NOT;

  final IntFilter? id;

  final StringFilter? title;

  final StringFilter? content;

  final IntNullableFilter? userId;

  final DateTimeFilter? createdAt;

  @override
  Map<String, dynamic> toJson() => _$PostScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class PostCreateManyUserInput implements _i1.JsonSerializable {
  const PostCreateManyUserInput({
    this.id,
    required this.title,
    required this.content,
    this.createdAt,
  });

  factory PostCreateManyUserInput.fromJson(Map<String, dynamic> json) =>
      _$PostCreateManyUserInputFromJson(json);

  final int? id;

  final String title;

  final String content;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => _$PostCreateManyUserInputToJson(this);
}

@_i1.jsonSerializable
class PostUpdateWithoutUserInput implements _i1.JsonSerializable {
  const PostUpdateWithoutUserInput({
    this.title,
    this.content,
    this.createdAt,
  });

  factory PostUpdateWithoutUserInput.fromJson(Map<String, dynamic> json) =>
      _$PostUpdateWithoutUserInputFromJson(json);

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? content;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() => _$PostUpdateWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class PostUncheckedUpdateWithoutUserInput implements _i1.JsonSerializable {
  const PostUncheckedUpdateWithoutUserInput({
    this.id,
    this.title,
    this.content,
    this.createdAt,
  });

  factory PostUncheckedUpdateWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$PostUncheckedUpdateWithoutUserInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? content;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() =>
      _$PostUncheckedUpdateWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class PostUncheckedUpdateManyWithoutPostInput implements _i1.JsonSerializable {
  const PostUncheckedUpdateManyWithoutPostInput({
    this.id,
    this.title,
    this.content,
    this.createdAt,
  });

  factory PostUncheckedUpdateManyWithoutPostInput.fromJson(
          Map<String, dynamic> json) =>
      _$PostUncheckedUpdateManyWithoutPostInputFromJson(json);

  final IntFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? title;

  final StringFieldUpdateOperationsInput? content;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() =>
      _$PostUncheckedUpdateManyWithoutPostInputToJson(this);
}

@_i1.jsonSerializable
class Post implements _i1.JsonSerializable {
  const Post({
    required this.id,
    required this.title,
    required this.content,
    this.userId,
    required this.createdAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  final int id;

  final String title;

  final String content;

  final int? userId;

  final DateTime createdAt;

  @override
  Map<String, dynamic> toJson() => _$PostToJson(this);
}

@_i1.jsonSerializable
class User implements _i1.JsonSerializable {
  const User({
    required this.id,
    required this.username,
    required this.password,
    required this.createdAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final int id;

  final String username;

  final String password;

  final DateTime createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

class PostFluent<T> extends _i1.PrismaFluent<T> {
  const PostFluent(
    super.original,
    super.$query,
  );

  UserFluent<User?> user() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user',
          fields: fields,
        )
      ]),
      key: r'user',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }
}

class UserFluent<T> extends _i1.PrismaFluent<T> {
  const UserFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Post>?> post({
    PostWhereInput? where,
    Iterable<PostOrderByWithRelationInput>? orderBy,
    PostWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<PostScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'post',
          fields: fields,
          args: args,
        )
      ]),
      key: r'post',
    );
    final fields = PostScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> post) =>
        post.map((Map post) => Post.fromJson(post.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  UserCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UserCountOutputType(query);
  }
}

extension PostModelDelegateExtension on _i1.ModelDelegate<Post> {
  PostFluent<Post?> findUnique({required PostWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquePost',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquePost',
    );
    final future = query(PostScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Post.fromJson(json.cast<String, dynamic>()) : null);
    return PostFluent<Post?>(
      future,
      query,
    );
  }

  PostFluent<Post> findUniqueOrThrow({required PostWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquePostOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquePostOrThrow',
    );
    final future = query(PostScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Post.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Post)'));
    return PostFluent<Post>(
      future,
      query,
    );
  }

  PostFluent<Post?> findFirst({
    PostWhereInput? where,
    Iterable<PostOrderByWithRelationInput>? orderBy,
    PostWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<PostScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstPost',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstPost',
    );
    final future = query(PostScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Post.fromJson(json.cast<String, dynamic>()) : null);
    return PostFluent<Post?>(
      future,
      query,
    );
  }

  PostFluent<Post> findFirstOrThrow({
    PostWhereInput? where,
    Iterable<PostOrderByWithRelationInput>? orderBy,
    PostWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<PostScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstPostOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstPostOrThrow',
    );
    final future = query(PostScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Post.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Post)'));
    return PostFluent<Post>(
      future,
      query,
    );
  }

  Future<Iterable<Post>> findMany({
    PostWhereInput? where,
    Iterable<PostOrderByWithRelationInput>? orderBy,
    PostWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<PostScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyPost',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyPost',
    );
    final fields = PostScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyPost) => findManyPost
        .map((Map findManyPost) => Post.fromJson(findManyPost.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  PostFluent<Post> create({required PostCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOnePost',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOnePost',
    );
    final future = query(PostScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Post.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Post)'));
    return PostFluent<Post>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<PostCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyPost',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyPost',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyPost) =>
        AffectedRowsOutput.fromJson(createManyPost.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  PostFluent<Post?> update({
    required PostUpdateInput data,
    required PostWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOnePost',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOnePost',
    );
    final future = query(PostScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Post.fromJson(json.cast<String, dynamic>()) : null);
    return PostFluent<Post?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required PostUpdateManyMutationInput data,
    PostWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyPost',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyPost',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyPost) =>
        AffectedRowsOutput.fromJson(updateManyPost.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  PostFluent<Post> upsert({
    required PostWhereUniqueInput where,
    required PostCreateInput create,
    required PostUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOnePost',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOnePost',
    );
    final future = query(PostScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Post.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Post)'));
    return PostFluent<Post>(
      future,
      query,
    );
  }

  PostFluent<Post?> delete({required PostWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOnePost',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOnePost',
    );
    final future = query(PostScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Post.fromJson(json.cast<String, dynamic>()) : null);
    return PostFluent<Post?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({PostWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyPost',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyPost',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyPost) =>
        AffectedRowsOutput.fromJson(deleteManyPost.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregatePost aggregate({
    PostWhereInput? where,
    Iterable<PostOrderByWithRelationInput>? orderBy,
    PostWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregatePost',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregatePost',
    );
    return AggregatePost(query);
  }

  Future<Iterable<PostGroupByOutputType>> groupBy({
    PostWhereInput? where,
    Iterable<PostOrderByWithAggregationInput>? orderBy,
    required Iterable<PostScalarFieldEnum> by,
    PostScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByPost',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByPost',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByPost) => groupByPost.map((Map groupByPost) =>
        PostGroupByOutputType.fromJson(groupByPost.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension UserModelDelegateExtension on _i1.ModelDelegate<User> {
  UserFluent<User?> findUnique({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findUniqueOrThrow({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> findFirst({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findFirstOrThrow({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<Iterable<User>> findMany({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyUser',
    );
    final fields = UserScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyUser) => findManyUser
        .map((Map findManyUser) => User.fromJson(findManyUser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> create({required UserCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<UserCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyUser) =>
        AffectedRowsOutput.fromJson(createManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User?> update({
    required UserUpdateInput data,
    required UserWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required UserUpdateManyMutationInput data,
    UserWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyUser) =>
        AffectedRowsOutput.fromJson(updateManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> upsert({
    required UserWhereUniqueInput where,
    required UserCreateInput create,
    required UserUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> delete({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({UserWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyUser) =>
        AffectedRowsOutput.fromJson(deleteManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateUser aggregate({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateUser',
    );
    return AggregateUser(query);
  }

  Future<Iterable<UserGroupByOutputType>> groupBy({
    UserWhereInput? where,
    Iterable<UserOrderByWithAggregationInput>? orderBy,
    required Iterable<UserScalarFieldEnum> by,
    UserScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByUser',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByUser) => groupByUser.map((Map groupByUser) =>
        UserGroupByOutputType.fromJson(groupByUser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class PostGroupByOutputType implements _i1.JsonSerializable {
  const PostGroupByOutputType({
    this.id,
    this.title,
    this.content,
    this.userId,
    this.createdAt,
  });

  factory PostGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$PostGroupByOutputTypeFromJson(json);

  final int? id;

  final String? title;

  final String? content;

  final int? userId;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => _$PostGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class UserGroupByOutputType implements _i1.JsonSerializable {
  const UserGroupByOutputType({
    this.id,
    this.username,
    this.password,
    this.createdAt,
  });

  factory UserGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$UserGroupByOutputTypeFromJson(json);

  final int? id;

  final String? username;

  final String? password;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregatePost {
  const AggregatePost(this.$query);

  final _i1.PrismaFluentQuery $query;

  PostCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return PostCountAggregateOutputType(query);
  }

  PostAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return PostAvgAggregateOutputType(query);
  }

  PostSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return PostSumAggregateOutputType(query);
  }

  PostMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return PostMinAggregateOutputType(query);
  }

  PostMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return PostMaxAggregateOutputType(query);
  }
}

class AggregateUser {
  const AggregateUser(this.$query);

  final _i1.PrismaFluentQuery $query;

  UserCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UserCountAggregateOutputType(query);
  }

  UserAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return UserAvgAggregateOutputType(query);
  }

  UserSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return UserSumAggregateOutputType(query);
  }

  UserMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return UserMinAggregateOutputType(query);
  }

  UserMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return UserMaxAggregateOutputType(query);
  }
}

class PostCountAggregateOutputType {
  const PostCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> content() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'content',
          fields: fields,
        )
      ]),
      key: r'content',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userId',
          fields: fields,
        )
      ]),
      key: r'userId',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'createdAt',
          fields: fields,
        )
      ]),
      key: r'createdAt',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class PostAvgAggregateOutputType {
  const PostAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userId',
          fields: fields,
        )
      ]),
      key: r'userId',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class PostSumAggregateOutputType {
  const PostSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userId',
          fields: fields,
        )
      ]),
      key: r'userId',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class PostMinAggregateOutputType {
  const PostMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> content() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'content',
          fields: fields,
        )
      ]),
      key: r'content',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userId',
          fields: fields,
        )
      ]),
      key: r'userId',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<DateTime?> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'createdAt',
          fields: fields,
        )
      ]),
      key: r'createdAt',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class PostMaxAggregateOutputType {
  const PostMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> content() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'content',
          fields: fields,
        )
      ]),
      key: r'content',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userId',
          fields: fields,
        )
      ]),
      key: r'userId',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<DateTime?> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'createdAt',
          fields: fields,
        )
      ]),
      key: r'createdAt',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class UserCountOutputType {
  const UserCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> post({PostWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'post',
          fields: fields,
          args: args,
        )
      ]),
      key: r'post',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'createdAt',
          fields: fields,
        )
      ]),
      key: r'createdAt',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UserAvgAggregateOutputType {
  const UserAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class UserSumAggregateOutputType {
  const UserSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'createdAt',
          fields: fields,
        )
      ]),
      key: r'createdAt',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'createdAt',
          fields: fields,
        )
      ]),
      key: r'createdAt',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Z2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgICAgICA9ICJkYXJ0IHJ1biBvcm0iCiAgYmluYXJ5VGFyZ2V0cyA9IFsibmF0aXZlIl0KfQoKZGF0YXNvdXJjZSBkYiB7CiAgcHJvdmlkZXIgPSAicG9zdGdyZXNxbCIKICB1cmwgICAgICA9IGVudigiREFUQUJBU0VfVVJMIikKfQoKbW9kZWwgUG9zdCB7CiAgaWQgICAgICAgIEludCAgICAgIEBpZCBAZGVmYXVsdChhdXRvaW5jcmVtZW50KCkpCiAgdGl0bGUgICAgIFN0cmluZwogIGNvbnRlbnQgICBTdHJpbmcKICB1c2VySWQgICAgSW50PwogIGNyZWF0ZWRBdCBEYXRlVGltZSBAZGVmYXVsdChub3coKSkgQGRiLlRpbWVzdGFtcHR6KDYpCiAgdXNlciAgICAgIFVzZXI/ICAgIEByZWxhdGlvbihmaWVsZHM6IFt1c2VySWRdLCByZWZlcmVuY2VzOiBbaWRdKQoKICBAQG1hcCgicG9zdCIpCn0KCm1vZGVsIFVzZXIgewogIGlkICAgICAgICBJbnQgICAgICBAaWQgQGRlZmF1bHQoYXV0b2luY3JlbWVudCgpKQogIHVzZXJuYW1lICBTdHJpbmcgICBAdW5pcXVlIEBkYi5WYXJDaGFyKDQ1KQogIHBhc3N3b3JkICBTdHJpbmcgICBAZGIuVmFyQ2hhcig0NSkKICBjcmVhdGVkQXQgRGF0ZVRpbWUgQGRlZmF1bHQobm93KCkpIEBkYi5UaW1lc3RhbXB0eig2KQogIHBvc3QgICAgICBQb3N0W10KCiAgQEBtYXAoInVzZXIiKQp9Cg==',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'C:\Users\anooc\AppData\Local\npm-cache\_npx\2778af9cee32ff87\node_modules\prisma\query-engine-windows.exe',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );
  _i1.ModelDelegate<Post> get post => _i1.ModelDelegate<Post>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
  _i1.ModelDelegate<User> get user => _i1.ModelDelegate<User>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
