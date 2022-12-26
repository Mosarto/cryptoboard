import 'package:cryptoboard/Screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

void main() {
  runApp(const MyApp());
  doWhenWindowReady(() {
    final win = appWindow;
    const initialSize = Size(1440, 900);
    win.minSize = initialSize;
    win.size = initialSize;
    win.alignment = Alignment.center;
    win.title = "CryptoBoard";
    win.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CriptoBoard',
      theme: ThemeData(
        fontFamily: 'DMSans',
        primarySwatch: Colors.purple,
      ),
      home: const Dashboard(),
    );
  }
}
