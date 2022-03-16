
class PostModel {

  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModel({this.userId, this.id, this.title, this.body});

  factory PostModel.fromJSon(Map<String, dynamic> map) {
    return PostModel(
        userId: map['userId'],
        id: map['id'],
        title: map['title'],
        body: map['body']
    );
  }

  @override
  String toString() {
    return 'PostModel{userId: $userId, id: $id, title: $title, body: $body}';
  }
}