// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

import 'ambulance.dart';

Driver userFromJson(String str) => Driver.fromJson(json.decode(str));

String userToJson(Driver data) => json.encode(data.toJson());

class Driver {
  final int driverId;
  final double lat;
  final double lng;
  final String driverStatus;
  final Ambulance ambulance;
  final UserClass user;

  Driver({
    required this.driverId,
    required this.lat,
    required this.lng,
    required this.driverStatus,
    required this.ambulance,
    required this.user,
  });

  factory Driver.fromJson(Map<String, dynamic> json) => Driver(
        driverId: json["driverId"],
        lat: json["lat"]?.toDouble(),
        lng: json["lng"]?.toDouble(),
        driverStatus: json["driverStatus"],
        ambulance: Ambulance.fromJson(json["ambulance"]),
        user: UserClass.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "driverId": driverId,
        "lat": lat,
        "lng": lng,
        "driverStatus": driverStatus,
        "ambulance": ambulance.toJson(),
        "user": user.toJson(),
      };
}

class UserClass {
  final dynamic createdAt;
  final dynamic updatedAt;
  final int userId;
  final String name;
  final String email;
  final String password;
  final String phone;
  final String address;
  final DateTime dob;
  final String role;
  final String token;

  UserClass({
    required this.createdAt,
    required this.updatedAt,
    required this.userId,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.address,
    required this.dob,
    required this.role,
    required this.token,
  });

  factory UserClass.fromJson(Map<String, dynamic> json) => UserClass(
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        userId: json["userId"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        phone: json["phone"],
        address: json["address"],
        dob: DateTime.parse(json["dob"]),
        role: json["role"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "userId": userId,
        "name": name,
        "email": email,
        "password": password,
        "phone": phone,
        "address": address,
        "dob": dob.toIso8601String(),
        "role": role,
        "token": token,
      };
}
