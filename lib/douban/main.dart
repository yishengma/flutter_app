import 'package:flutter/material.dart';
import 'group/group_page.dart';
import 'home/home_page.dart';
import 'main/main_page.dart';
import 'mail/mail_page.dart';
import 'subject/subject_page.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        splashColor: Colors.transparent,
      ),
      home: new Scaffold(
        appBar: AppBar(),
        body: MainPage(),
      ),
    );
  }
}

class StarRating extends StatefulWidget {
  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color unselectedColor;
  final Color selectedColor;

  StarRating(
      {@required this.rating,
      this.maxRating = 10,
      this.count = 5,
      this.size = 30,
      this.unselectedColor = const Color(0xffff0000),
      this.selectedColor = const Color(0xffff0000)});

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildSelectStar(),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: buildUnSelectedIcon(),
        ),
      ],
    );
  }

  List<Widget> buildSelectedIcon() {
    return List.generate(widget.count, (index) {
      return Icon(Icons.star, color: widget.selectedColor, size: widget.size);
    });
  }

  List<Widget> buildUnSelectedIcon() {
    return List.generate(widget.count, (index) {
      return Icon(Icons.star_border,
          color: widget.unselectedColor, size: widget.size);
    });
  }

  List<Widget> buildSelectStar() {
    List<Widget> stars = [];
    final star =
        Icon(Icons.star, color: widget.selectedColor, size: widget.size);
    double oneValue = widget.maxRating / widget.count;
    int entireCount = (widget.rating / oneValue).floor();
    for (var i = 0; i < entireCount; i++) {
      stars.add(star);
    }

    double leftWidth = (widget.rating / oneValue - entireCount) * widget.size;
    final halfStar = ClipRect(
      clipper: StarClipper(leftWidth),
      child: star,
    );
    stars.add(halfStar);
    return stars;
  }
}

class StarClipper extends CustomClipper<Rect> {
  double width;

  StarClipper(this.width);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}

class DashedLine extends StatelessWidget {
  final Axis axis;
  final double dashedWidth;
  final double dashedHeight;
  final int count;
  final Color color;

  DashedLine({
    this.axis = Axis.horizontal,
    this.dashedWidth = 1,
    this.dashedHeight = 1,
    this.count = 10,
    this.color = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: axis,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(count, (index) {
        return SizedBox(
          width: dashedWidth,
          height: dashedHeight,
          child: DecoratedBox(decoration: BoxDecoration(color: color)),
        );
      }),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: 0,
        children: <Widget>[
          GroupHomePage(),
          HomeHomePage(),
          MailHomePage(),
          MainHomePage(),
          SubjectHomePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,

        items: [
          BottomBarItem("assets/test.jpg", "首页"),
          BottomBarItem("assets/test.jpg", "书影城"),
          BottomBarItem("assets/test.jpg", "小组"),
          BottomBarItem("assets/test.jpg", "市集"),
          BottomBarItem("assets/test.jpg", "我的"),
        ],
      ),
    );
  }
}

class BottomBarItem extends BottomNavigationBarItem {
  BottomBarItem(String icon, String title)
      : super(
            title: Text(title),
            icon: Image.asset(
              icon,
              width: 32,
            ));
}

