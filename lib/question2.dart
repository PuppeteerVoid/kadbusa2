import 'package:flutter/material.dart';
import 'package:kadbusa/boxcheck.dart';
import 'package:kadbusa/question1.dart';
import './main.dart';
import './previous.dart';
import './question3.dart';
import 'next.dart';

class question2 extends StatefulWidget {
  const question2({super.key});
  @override
  State<question2> createState() => _question2State();
}

class _question2State extends State<question2> {

  int _currentIndex = 0;

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
                'Question 2',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "At what time of the day are the greatest number of PWUDs to be found at this hotspot(what is the peak time)?",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "CIRCLE AS APPLICABLE(MULTIPLE RESPONSE POSSIBLE)",
                style: TextStyle(
                fontSize: 16,
                  fontWeight: FontWeight.w900
              ),
          textAlign: TextAlign.center,
              ),
              SizedBox(height: 30, width: 20,),
              Row(
                children: [
                  checkBox(),
                  Text(
                      "Morning"
                  ),
                ],
              ),
              Row(
                children: [
                  checkBox(),
                  Text(
                      "Afternoon"
                  ),
                ],
              ),
              Row(
                children: [
                  checkBox(),
                  Text(
                      "Evening"
                  ),
                ],
              ),
              Row(
                children: [
                  checkBox(),
                  Expanded(
                    child: Text(
                        "Night"
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  checkBox(),
                  Text(
                      "All 24 Hours"
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  prev(link: question1()),
                  next(link: question3()),
                ],
              ),
            ],
          ),
        ),
            ),
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

