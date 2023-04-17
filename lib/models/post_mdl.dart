// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:riverpod_refresh/models/resource_mdl.dart';

class Post extends Resource {
  final int userId;

  Post.fromMap(Map<String, dynamic> map)
      : userId = map['userId'] as int,
        super.fromMap(map);
}

class Comment extends Resource {
  final int postId;
  final String name;
  final String email;

  Comment.fromMap(Map<String, dynamic> map)
      : postId = map['postId'] as int,
        name = map['name'] as String,
        email = map['email'] as String,
        super.fromMap(map);
}

class Album extends Resource {
  final int userId;

  Album.fromMap(Map<String, dynamic> map)
      : userId = map['userId'] as int,
        super.fromMap(map);
}

class Photo extends Resource {
  final int albumId;
  final String url;
  final String thumbnailUrl;

  Photo.fromMap(Map<String, dynamic> map)
      : albumId = map['albumId'] as int,
        url = map['url'] as String,
        thumbnailUrl = map['thumbnailUrl'] as String,
        super.fromMap(map);
}

class Todo extends Resource {
  final int userId;
  final bool completed;

  Todo.fromMap(Map<String, dynamic> map)
      : userId = map['userId'] as int,
        completed = map['completed'] as bool,
        super.fromMap(map);
}
