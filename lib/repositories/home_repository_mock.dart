
import 'dart:convert';

import 'package:exemplo_projeto_login/models/models.dart';
import 'package:exemplo_projeto_login/models/post_model.dart';
import 'package:exemplo_projeto_login/repositories/repositories.dart';
import 'package:flutter/services.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    final value = await rootBundle.loadString('assets/data.json');
    List posts = jsonDecode(value);
    return posts.map((e) => PostModel.fromJSon(e)).toList();
  }
}