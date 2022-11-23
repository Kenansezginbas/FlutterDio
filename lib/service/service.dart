import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_dio/models/post_model.dart';

class Service {
  final dio = Dio();
  final url = "https://jsonplaceholder.typicode.com/posts/1/comments";
  List<PostModel> _posts = [];

  Future<List<PostModel>> getPosts() async {
    final response = await dio.get(url);
    if (response.statusCode == HttpStatus.ok) {
      final responseData = response.data as List;
      _posts = responseData.map((e) => PostModel.fromJson(e)).toList();
      return _posts;
    } else {
      return _posts;
    }
  }
}
