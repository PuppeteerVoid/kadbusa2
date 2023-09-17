import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class submit extends StatelessWidget {
  submit({
    super.key,
    required this.link,
  });
  var link;
  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Color.fromRGBO(37,37,37,1),
      padding: EdgeInsets.symmetric(vertical: 2),
      width: MediaQuery.of(context).size.width*(1/2.5),
      child: TextButton(onPressed: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => link)
        );
      },
          child: Text(
            "Submit",
            style: TextStyle(
                fontSize: 16,
                color: Colors.white
            ),)
      ),
    );  }
}
