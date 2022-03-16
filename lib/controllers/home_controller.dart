
import 'package:exemplo_projeto_login/models/post_model.dart';
import 'package:exemplo_projeto_login/repositories/repositories.dart';
import 'package:flutter/cupertino.dart';

class HomeController {

  final HomeRepository _homeRepository;
  HomeController(this._homeRepository);

  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);

  fetchPosts() async => posts.value = await _homeRepository.getList();

}