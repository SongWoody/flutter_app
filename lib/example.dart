

/// ExampleMain
void exampleMain() {
  print("Start exampleMain");

  numberFuture().then((value) => {
    print("value: $value")
  }).catchError((error){
    print("error: $error");
  });
}

/// convention
/// enum 은 UpperCamelCase
/// enum member 는 LowCamelCase
enum Status {
  login,
  logout
}

/// Future Example
Future<int> numberFuture() {
  return Future<int>.delayed(Duration(seconds: 5) , () {
    return 100;
  });
}