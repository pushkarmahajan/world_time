import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0 ;
  @override
  Widget build(BuildContext context) {
    print('this is build');
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text('Choose a Location'),
      centerTitle: true,
      elevation: 0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {
            counter +=1 ;
          });
        },
        child: Text("counter is $counter",
               style: TextStyle(
                  fontSize: 16.0,
                 fontWeight: FontWeight.bold
               ),
        ),
      )
    );
  }
}


