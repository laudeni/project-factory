import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class StudentModel extends ChangeNotifier {
  String _username;
  String _password;
  String _name;
  int _age;
  double _height;
  double _weight;
  DateTime _date;

  void setUsername(String username) {
    _username = username;
  }

  String getUsername() {
    return _username;
  }

  void setPassword(String password) {
    _password = password;
  }

  String getPassword() {
    return _password;
  }

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  void setAge(int age) {
    _age = age;
  }

  int getAge() {
    return _age;
  }

  void setHeight(double height) {
    _height = height;
  }

  double getHeight() {
    return _height;
  }

  void setWeight(double weight) {
    _weight = weight;
  }

  double getWeight() {
    return _weight;
  }

  void setDate() {
    _date = DateTime.now();
  }

  DateTime getDate() {
    return _date;
  }

  FirebaseFirestore getConnection() {
    return FirebaseFirestore.instance;
  }
}
