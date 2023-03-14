import 'package:flutter/material.dart';
import 'package:life_cycle/life_c/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: no_logic_in_create_state
  _HomePageState createState() {
    print('createState');
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  // @override
  // void initState() {
  //   print('initState');
  //   super.initState();
  // }

  // @override
  // void didChangeDependencies() {
  //   print('didChangeDependencies');
  //   super.didChangeDependencies();
  // }

  // @override
  // dirty() {
  //   super.dirty();
  // }

  // @override
  // clean() {
  //   super.clean();
  // }

  // @override
  // void didUpdateWidget(covariant HomePage oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  // }

  // @override
  // void setState(VoidCallback fn) {
  //   super.setState(fn);
  // }

  // @override
  // void dispose() {
  //   print('dispose');
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // print('BuildContext');
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondPage(),
          ),
        );
      }),
    );
  }
}
