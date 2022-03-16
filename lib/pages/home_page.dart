import 'dart:developer';
import 'package:exemplo_projeto_login/controllers/controllers.dart';
import 'package:exemplo_projeto_login/models/models.dart';
import 'package:exemplo_projeto_login/repositories/repositories.dart';
import 'package:exemplo_projeto_login/services/services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final HomeController _controller = HomeController(HomeRepositoryImplement());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.fetchPosts();
  }

  _iconButton() {
    return IconButton(
        onPressed: () => _onPressed(),
        icon: const Icon(Icons.logout)
    );
  }

  _valueListenable() {
    return ValueListenableBuilder<List<PostModel>>(
        valueListenable: _controller.posts,
        builder: (_, posts, __) => ListView.separated(
            shrinkWrap: true,
            itemCount: posts.length,
            itemBuilder: (_, index) => ListTile(
              leading: Text(posts[index].id.toString()),
              title: Text(posts[index].title!),
              trailing: const Icon(Icons.arrow_forward_outlined),
              onTap: () {
                log('${posts[index]}');
                Navigator.of(context).pushNamed(
                    '/details',
                    arguments: posts[index]);
              }),
            separatorBuilder: (_, index) => const Divider(),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts'), actions: [_iconButton()]),
      body: SafeArea(child: _valueListenable())
    );
  }

  _onPressed() {
    PreferencesService.logout();
    Navigator.of(context).pushNamedAndRemoveUntil('/login', (_) => true);
  }

}


