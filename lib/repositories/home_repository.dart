import 'package:exemplo_projeto_login/models/post_model.dart';

abstract class HomeRepository {

  Future<List<PostModel>> getList();

}