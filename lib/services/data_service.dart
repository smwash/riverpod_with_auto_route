// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_refresh/network/api_service.dart';

abstract class DataService {
  late Ref ref;
  late String url;

  loadObjectFromJson(Map<String, dynamic> data);

  Future<List<dynamic>> getData(
      {Map<String, dynamic>? queryParams,
      String? customUrl,
      CancelToken? cancelToken}) async {
    Response response = await ref.read(dioProvider).dio!.get(customUrl ?? url,
        queryParameters: queryParams, cancelToken: cancelToken);

    return response.data.map((data) => loadObjectFromJson(data)).toList();
  }

  //Get Single Object
  Future<List<dynamic>> getDataById(
      {required int id,
      Map<String, dynamic>? queryParams,
      CancelToken? cancelToken}) async {
    Response response = await ref.read(dioProvider).dio!.get('$url/$id',
        queryParameters: queryParams, cancelToken: cancelToken);
    return response.data.map((data) => loadObjectFromJson(data)).toList();
  }
}
