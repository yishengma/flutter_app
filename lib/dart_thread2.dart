import 'dart:isolate';

main() async {
  Isolate.spawn(cal, 100);

  //1 创建管道
  ReceivePort receivePort = ReceivePort();

  //2创建 isolate
  Isolate isolate = await Isolate.spawn(foo, receivePort.sendPort);

  //3监听管道
  receivePort.listen((message) {
    print(message);
    receivePort.close();
    isolate.kill();
  });
}

void foo(SendPort sendPort) {}

int cal(int count) {
  int total = 0;
  for (var i = 1; i < 255; i++) {
    total += i;
  }
  return total;
}
