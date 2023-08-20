class Users {
  final String email;
  final String password;

  Users({required this.email, required this.password});

  factory Users.fromMap(map) =>
      Users(email: map['email'], password: map['password']);

  Map<String, dynamic> toMap() {
    return {'email': email, 'password': password};
  }
}
