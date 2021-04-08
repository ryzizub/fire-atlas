import 'package:flutter/material.dart';

import './vendor/micro_store/micro_store.dart';

import './screens/open_screen/open_screen.dart';
import './screens/editor_screen/editor_screen.dart';

import './store/store.dart';

void main() {
  Store.instance = MicroStore<FireAtlasState>(FireAtlasState());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fire Atlas Editor',
      theme: ThemeData(
        primaryColor: Color(0XFFD20101),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        buttonColor: Color(0XFFDB5B42),
      ),
      home: OpenScreen(),
      routes: {
        '/editor': (_) => EditorScreen(),
      },
    );
  }
}
