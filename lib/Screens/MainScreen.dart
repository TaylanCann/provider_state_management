import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final title;
  const MainScreen({Key? key, required this.title}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  _appBar() {
    return AppBar(
      title: Text("Provider"),
    );
  }

  _body() {
    return Column(
      children: [
        Text("data"),
        ValueListenableBuilder(
            valueListenable: valueListenable,
            builder: (BuildContext context) {})
      ],
    );
  }
}
