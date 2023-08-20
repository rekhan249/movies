class UserId {
  final String userId;

  UserId({required this.userId});

  factory UserId.fromMap(map) => UserId(userId: map['userId'] ?? '');
  Map<String, dynamic> toMap() {
    return {'userId': userId};
  }
}
