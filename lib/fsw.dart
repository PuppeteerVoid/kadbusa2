import 'package:flutter/material.dart';

void main (){
  runApp(
      fsw()
  );
}
class fsw extends StatefulWidget {
  const fsw({super.key});

  @override
  State<fsw> createState() => _fswState();
}

class _fswState extends State<fsw> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('FSW'),
      ),
    );
  }
}
