import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Input());
}

class Input extends StatelessWidget {
  const Input({
    super.key
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 2, 0, 2),
      width: MediaQuery.sizeOf(context).width*(90/100),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: '',
        ),
      ),
    );
  }
}
