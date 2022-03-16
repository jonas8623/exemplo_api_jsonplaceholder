import 'package:exemplo_projeto_login/models/post_model.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {

  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PostModel argument = ModalRoute.of(context)!.settings.arguments as PostModel;

    _titleText() {
      return Text(argument.title.toString(), style: const TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 26,
              fontWeight: FontWeight.bold,
              shadows: <Shadow>[
                Shadow(color: Colors.black54, blurRadius: 2.3, offset: Offset(2, 2)),
                Shadow(color: Colors.grey, blurRadius: 2.3, offset: Offset(4, 5)),
              ]
      ));
    }

    _bodyText() {
      return Text(argument.body.toString(), style: const TextStyle(
        fontSize: 18,
        letterSpacing: 2.4,
      ),);
    }

    _sizedBox() => const SizedBox(height: 28,);

    return Scaffold(
      appBar: AppBar(title: Text(argument.title.toString()),),
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _titleText(),
            _sizedBox(),
            _bodyText(),
            _sizedBox(),
            _bodyText()
          ],
        ),
      ),
    );
  }
}
