class Resource {
  final int id;
  final String? title;
  final String? body;

  Resource.fromMap(Map<String, dynamic> map)
      : id = map['id'] as int,
        title = map['title'] != null ? map['title'] as String : null,
        body = map['body'] != null ? map['body'] as String : null;
}
