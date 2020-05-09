import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());//dart 语法 执行main 函数，=> 执行单个函数

//继承 Widget 应用本身也成为一个 widget
//widget 的主要工作是提供一个 build 的方法来描述如何根据较低的 widget 来显示自己
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
//    final wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
//          child: new Text('Hello world'),
//        child: new Text(wordPair.asPascalCase),
            child: new RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {

  @override
  State createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {

  @override
  Widget build(BuildContext context) {
//    final worldPair = new WordPair.random();
//    return new Text(worldPair.asPascalCase);

  //在 Dart 语言中使用 _下划线开头，会强制变成私有的
      final _suggestions = <WordPair>[];
      final _biggerFont = const TextStyle(fontSize: 18.0);
      Widget _buildRow(WordPair pair) {
        return new ListTile(
          title: new Text(
            pair.asPascalCase,
            style: _biggerFont,
          ),
        );
      }
      Widget _buildSuggestions() {
        return new ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemBuilder: (context,i){
              if(i.isOdd)
                return new Divider();
               final index = i~/2;
               if(index >= _suggestions.length) {
                 _suggestions.addAll(generateWordPairs().take(10));
               }
               return _buildRow(_suggestions[index]);
            });
      }
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Startup Name Generator'),
        ),
        body: _buildSuggestions(),
      );
  }
}
