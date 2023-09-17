import 'package:flutter/material.dart';
import 'package:kadbusa/max.dart';
import 'package:kadbusa/min.dart';
import 'package:kadbusa/next.dart';
import 'package:kadbusa/previous.dart';
import 'package:kadbusa/question12.dart';
import 'package:kadbusa/question14.dart';
void main(){
  runApp(question13());
}
class question13 extends StatefulWidget {
  const question13({super.key});

  @override
  State<question13> createState() => _question13State();
}

class _question13State extends State<question13> {
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
                'Question 13',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "What is the number of PWUDs who are aged below 25 years?",
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
                  prev(link: question12()),
                  next(link: question14()),
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
