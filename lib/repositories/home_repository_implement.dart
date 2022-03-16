
import 'dart:developer';

import 'package:exemplo_projeto_login/models/models.dart';
import 'package:exemplo_projeto_login/repositories/home_repository.dart';
import 'package:dio/dio.dart';

class HomeRepositoryImplement implements HomeRepository{
  @override
  Future<List<PostModel>> getList() async {
    try {
      final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');
      return (response.data as List).map((e) => PostModel.fromJSon(e)).toList();
    } catch (e) {
      log(e.toString());
    }
    return [];
  }
}