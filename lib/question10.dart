import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kadbusa/max.dart';
import 'package:kadbusa/min.dart';
import 'package:kadbusa/next.dart';
import 'package:kadbusa/previous.dart';
import 'package:kadbusa/question11.dart';
import 'package:kadbusa/question9.dart';

void main(){
  runApp(question10());
}
class question10 extends StatefulWidget {
  const question10({super.key});

  @override
  State<question10> createState() => _question10State();
}

class _question10State extends State<question10> {
  @override
  var _currentIndex = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text(
              'KADBUSA',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            centerTitle: true,

            backgroundColor: Color.fromRGBO(37,37,37,1)
        ),
        body: SingleChildScrollView(child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 50, 8, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Hot spot Validation Form",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 110,),
              Text(
                'Question 10',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "How many PWUD individuals who come to this hot spot also use a mobile phone to arrange meetings with other key population individuals or clients?",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height:30),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    min(),
                    max()
                  ]
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  prev(link: question9()),
                  next(link: question11()),
                ],
              ),
            ],
          ),
        ),),
        bottomNavigationBar: NavigationBar(destinations: [
          NavigationDestination(icon: Icon(Icons.construction), label: 'PWUD'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Suicidal'),
          NavigationDestination(icon: Icon(Icons.people), label: 'FSW')
        ],
          onDestinationSelected: (int index){
            setState(() {
              _currentIndex = index;
              // if(_currentIndex == 0){
              // }else if(_currentIndex == 1){
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => suicidal())
              //   );
              // }else if(_currentIndex == 2){
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => fsw())
              //   );
              // }else{
              //   Text('This page that you are looking for does not exist');
              // }
            });
          },
          selectedIndex: _currentIndex,
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //     items: [
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.construction),
        //         label: 'PWUD',
        //         backgroundColor: Color.fromRGBO(140, 189, 217, 1)
        //         ),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.settings),
        //           label: 'Addicts',
        //           backgroundColor: Colors.red
        //       ),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.people),
        //           label: 'FWS',
        //           backgroundColor: Colors.black
        //       ),
        //     ],
        //   onTap: (index){
        //       setState(() {
        //         _currentIndex = index;
        //       });
        //   },
        //   currentIndex: _currentIndex,
        // )
      ),
    );
  }
}
