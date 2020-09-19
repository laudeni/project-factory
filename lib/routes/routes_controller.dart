import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prototype/views/home_page.dart';

class RouteController {
  exitHome(bool returnPage) async {
    if (returnPage == true) {
      return navigator.pushAndRemoveUntil(MaterialPageRoute(builder: (_) {
        return HomePage();
      }), ModalRoute.withName("/"));
    } else {
      return navigator.pop(false);
    }
  }

  void returnOneRoute(bool returnPage) {
    if (returnPage == true) {
      return navigator.pop(true);
    } else {
      return navigator.pop(false);
    }
  }

  Future<dynamic> logoutUser() async {
    navigator.pushAndRemoveUntil(MaterialPageRoute(builder: (_) {
      return HomePage();
    }), ModalRoute.withName("/"));
  }

  Future<dynamic> returnAddAdminView() async {
    return navigator.pushNamed("/addAdmin");
  }

  Future<dynamic> returnAddStudentView() async {
    return navigator.pushNamed("/addStudent");
  }

  Future<dynamic> returnListStudentsView() async {
    return navigator.pushNamed("/listStudents");
  }

  Future<dynamic> returnListAdminsView() async {
    return navigator.pushNamed("/listAdmins");
  }

  Future<dynamic> redirectCorrectHome(String typeOf) {
    if (typeOf == "admin") {
      return Get.offAllNamed("/homeAdmin");
    } else {
      return Get.offAllNamed("/homeStudent");
    }
  }
}
