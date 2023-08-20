class UserWithIdModel {
  final String userId;
  final String title;
  final String desc;

  UserWithIdModel(
      {required this.userId, required this.title, required this.desc});

  factory UserWithIdModel.fromMap(map) => UserWithIdModel(
      userId: map['userId'] ?? '',
      title: map['title'] ?? '',
      desc: map['desc'] ?? '');

  Map<String, dynamic> toMap() {
    return {'userId': userId, 'title': title, 'desc': desc};
  }
}
