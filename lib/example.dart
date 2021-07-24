

import 'package:flutter/foundation.dart';

/// ExampleMain
void exampleMain() {
  print("Start exampleMain");

  // numberFuture().then((value) => {
  //   print("value: $value")
  // }).catchError((error){
  //   print("error: $error");
  // });

  login().then((value) => {
    print("login $value}")
  });
}

/// convention
/// enum 은 UpperCamelCase
/// enum member 는 LowCamelCase
enum LoginStatus {
  success,
  failure
}

/// async / await Example
Future<LoginStatus> login() async{
  var id = await Disk().readUserId();
  var result = await LoginManager().login(id);
  return result ? LoginStatus.success : LoginStatus.failure;
}

class Disk {
  Future<String> readUserId() {
    print("read id from disk");
    return Future.delayed(Duration(seconds: 3), () {
      return "Woody";
    });
  }
}

class LoginManager {
  Future<bool> login(String id) {
    print("login process");
    return Future.delayed(Duration(seconds: 1), () {
      if (id == "Woody") {
        return true;
      } else {
        return false;
      }
    });
  }
}