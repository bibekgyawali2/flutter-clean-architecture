class Users {
  int userId;
  int id;
  String title;
  String body;
  Users({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
  Users toDomain() {
    return Users(
      userId: userId,
      id: id,
      title: title,
      body: body,
    );
  }
}
