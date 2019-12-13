import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Platform Plugin Issue'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Press the button to open flutter.dev',
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _openFlutterDev,
          tooltip: 'Open',
          child: Icon(Icons.open_in_browser),
        ),
      ),
    );
  }

  void _openFlutterDev() {
    launch('https://flutter.dev');
  }
}
