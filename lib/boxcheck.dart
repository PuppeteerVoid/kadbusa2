import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(checkBox());
}
class checkBox extends StatefulWidget {
  const checkBox({super.key});

  @override
  State<checkBox> createState() => _checkBoxState();
}

class _checkBoxState extends State<checkBox> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: isChecked,
        activeColor: Color.fromRGBO(37,37,37,1),
        onChanged: (newBool){
      setState(() {
        isChecked = newBool;
      });
    });
  }
}

