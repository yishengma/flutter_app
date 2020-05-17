import 'dart:io';

main() {
  print("main start");
//  var resulr = getSyncNetworkData();
//  print(resulr);

  var future = getFutureNetworkData();
  future.then((String value) {
    print(value);
  }).catchError((err) {
    //处理异常，链式调用不能分开
    print(err);
  }).whenComplete(() => print("代码执行完成。"));
  print("main end");

  executeLinkFuture();
}

String getSyncNetworkData() {
  sleep(Duration(seconds: 3));
  return "getSyncNetworkData";
}

//将耗时的操作
Future<String> getFutureNetworkData() {
  return Future<String>(() {
    sleep(Duration(seconds: 3));
    return "getFutureNetworkData";
  });
}

//
void executeLinkFuture() {
  Future(() {
    sleep(Duration(seconds: 3));
    return "第一次结果";
  }).then((value) {
    print(value);//这是第一次的结果
    sleep(Duration(seconds: 3));
    return "第二次结果";
  }).then((value) {
    print(value);
    sleep(Duration(seconds: 3));
    return "第三次结果";
  }).then((value) {
    print(value);
  }).catchError((err) {

  });
}


void executeDelayed() {
  Future.delayed(Duration(seconds: 3)).then((value){

  });
}


//解决两个问题
// await 必须在 async 中使用
// async 返回的结果必须是一个future

//语法糖
//Future 包装 String
Future getAwaitAsync() async{
  await sleep(Duration(seconds: 5));
  return "执行";
}



//
void getData() async{
  var res1 = await getSyncNetworkData();
  var res2 = await getSyncNetworkData();
  void res3 = await getSyncNetworkData();
}