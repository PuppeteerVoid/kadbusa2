
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './fsw.dart';
import './next.dart';
import 'input.dart';
import 'question1.dart';

void main() {
  runApp(
      homepage()
  );
}

class homepage extends StatefulWidget {
  const homepage({super.key});
  @override
  State<homepage> createState() => _homepageState();
}
class _homepageState extends State<homepage> {
  int _currentIndex = 0;
  final _pagesCorrespondence = {
    0: homepage(),
    2: fsw(),
  };
//   _changeItem (ind){
//     _currentIndex = ind
// }

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
          child:Padding(
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
                SizedBox(height: 100,),
                Text(
                  "Community Outreach Worker's name",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
                Input(),
                SizedBox(height: 30,),
                Text(
                  "Hot spot name",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
                Input(),
                SizedBox(height: 30,),
                Text(
                  "District",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
                Input(),
                SizedBox(height: 30,),
                Text(
                  "Address/location",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30,),
                Input(),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    next(link: question1()),
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

