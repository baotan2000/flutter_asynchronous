import 'dart:async';

void main() {
  //Stream

  //-----*-------*--------

  //1: Tạo từ Future

  // Future<int> futureNumber = Future.delayed(Duration(seconds: 2), () => 2);
  // Stream<int> streamNumber =
  //     Stream.fromFuture(futureNumber).asBroadcastStream();

  // streamNumber.listen((value) {
  //   print(value);
  // });

  // streamNumber.listen((value) {
  //   print(value);
  // });

//-------------------------------------------------------

// 2: Tạo từ Iterable

  // Iterable<int> iterable = Iterable.generate(10, (index) => index + 1);
  // Stream<int> streamIterable = Stream.fromIterable(iterable);

  // int index = 0;
  // streamIterable.listen((number) {
  //   print("$number - ${index++}");
  // });

  // 3: Tạo ra từ periodic

  // Stream<int> streamPeriodic =
  //     Stream.periodic(Duration(seconds: 1), (compuration) {
  //   throw Exception("Lỗi");
  // });

  // streamPeriodic
  //     .listen((event) => print(event))
  //     .onError((error) => print("Lỗi $error"));

  // StreamController

  StreamController<String> stringController = StreamController();

  stringController.stream.listen((event) {
    print(event);
  });

  Future.delayed(Duration(seconds: 2), () {
    stringController.sink.add("Tèo");
  });
}
