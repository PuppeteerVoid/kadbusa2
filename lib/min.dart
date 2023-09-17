import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(min());
}
class min extends StatelessWidget {
  const min({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 2, 0, 2),
      width: MediaQuery.sizeOf(context).width * (1/2.4),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Min",
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
