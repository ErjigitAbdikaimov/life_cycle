import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  // ignore: no_logic_in_create_state
  _SecondPageState createState() {
    print('createState');
    return _SecondPageState();
  }
}

class _SecondPageState extends State<SecondPage> {
  Color? _color;

  @override
  void initState() {
    print('initState');
    changeColor(Colors.red, 2);
    super.initState();
  }

  Future<void> changeColor(Color? color, int seconds) async {
    await Future.delayed(Duration(seconds: seconds));
    _color = color;
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    changeColor(Colors.blue, 6);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      backgroundColor: _color,
      appBar: AppBar(title: Text("SecondPage")),
    );
  }

  @override
  void dispose() {
    print('dispose');
    _color = null;
    super.dispose();
  }
}
