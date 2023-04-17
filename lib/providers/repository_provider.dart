import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_refresh/repositories/comment_repository.dart';
import 'package:riverpod_refresh/repositories/photo_repository.dart';
import 'package:riverpod_refresh/repositories/post_repository.dart';
import 'package:riverpod_refresh/repositories/todo_repository.dart';
import 'package:riverpod_refresh/repositories/user_repository.dart';

abstract class Repository {
  //Posts
  static Provider<PostRepository> get post => PostRepository.provider;
  //Posts
  static Provider<UserRepository> get user => UserRepository.provider;
  //Todos
  static Provider<TodoRepository> get todo => TodoRepository.provider;
  //Photos
  static Provider<PhotoRepository> get photo => PhotoRepository.provider;
  //Photos
  static Provider<CommentRepository> get comment => CommentRepository.provider;
}
