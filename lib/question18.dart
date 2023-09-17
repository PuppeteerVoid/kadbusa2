import 'package:flutter/material.dart';
import 'package:kadbusa/boxcheck.dart';
import 'package:kadbusa/input.dart';
import 'package:kadbusa/main.dart';
import 'package:kadbusa/previous.dart';
import 'package:kadbusa/question17.dart';
import 'submit.dart';
void main(){
  runApp(question18());
}
class question18 extends StatefulWidget {
  const question18({super.key});

  @override
  State<question18> createState() => _question18State();
}

class _question18State extends State<question18> {
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
        body: SingleChildScrollView(
          child: Padding(
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
                  'Question 18',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Do you know any other place like this around here where PWUds work at/visit?",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          checkBox(),
                          Text(
                              "Yes"
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          checkBox(),
                          Text(
                              "No"
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('If yes, enter the information below:'),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Text('Hot spot name and addresses/locations'),
                Input(),
                SizedBox(height: 30,),
                Text('Contact'),
                Input(),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    prev(link: question17()),
                    submit(link: homepage())
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

