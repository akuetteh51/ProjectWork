import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String name;
  final String email;
  final String password;
  final String profileImage;
  final String rank;
  final int point;
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.profileImage,
    required this.rank,
    required this.point,
  });

  factory User.fromDoc(DocumentSnapshot userDoc) {
    final userData = userDoc.data() as Map<String, dynamic>?;
    return User(
        id: userDoc.id,
        name: userDoc['name'],
        email: userDoc['email'],
        password: userDoc['password'],
        profileImage: userDoc['profileImage'],
        rank: userDoc['rank'],
        point: userDoc['point']);
  }

  factory User.initialUser() {
    return User(
        id: '',
        name: '',
        email: '',
        password: '',
        profileImage: '',
        rank: '',
        point: -1);
  }
  @override
  List<Object> get props {
    return [
      id,
      name,
      email,
      password,
      profileImage,
      rank,
      point,
    ];
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, password: $password, profileImage: $profileImage, rank: $rank, point: $point)';
  }
}
