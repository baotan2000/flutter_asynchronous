import 'dart:async';

void main(List<String> args) {
  //Khai báo Future
  //1: Delay
  // Future<String> future = Future.delayed(Duration(seconds: 2), () {
  //   return "Xin chao";
  //   throw Exception("Loi");
  // });

  // // Hứng giá trị và lỗi
  // future.then((value) => print(value)).catchError((error) => print(error));

  var numberA = 5;
  var numberB = 10;
  //Đề bài toán: numberA + numberB + numberA + numberB - 3

//Cách 1
  // plus(numberA, numberB)
  //     .then((resultOperator1) => plus(resultOperator1, numberA))
  //     .then((resultOperator2) => plus(resultOperator2, numberB))
  //     .then((resultOperator3) => minus(resultOperator3, 3))
  //     .then((result) => print(result))
  //     .catchError((error) => print(error));

//Cách 2
  handle(numberA, numberB).then((value) => print(value));
}

//Cách 1
Future<int> plus(int a, int b) {
  return Future.delayed(Duration(seconds: 1), () {
    return a + b;
  });
}

//Cách 1
Future<int> minus(int a, int b) {
  return Future.delayed(Duration(seconds: 1), () {
    return a - b;
  });
}

//Cách 2
Future<int> handle(int numberA, int numberB) {
  Completer<int> completer = Completer();

  Future.delayed(Duration(seconds: 3), () {
    completer.complete(numberA + numberB);
  });

  return completer.future;
}
