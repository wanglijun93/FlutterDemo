import 'package:flutter/widgets.dart';

class RandomWord extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    _getName('nihao');
    return null;
  }
}

String _getName(String name) => name;

// 测试代码
Future _test() async {
  String s =
      (new StringBuffer()..write('1')..write('2')..write('333')).toString();


}
