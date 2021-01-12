import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  
  void setupWorldTime() async{
    Worldtime instance = Worldtime(location:'Berlin', flag: 'germany.png', url: 'Atlantic/South_Georgia');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag' : instance.flag,
      'time' : instance.time
    });//pushReplacementNamed does not put the home page on loading page,
    // it replaces the loading page and then put the home page
    // it have a third argument through which we can send the data

  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Center(child:
        Container(
          child: Text('Loading......'),
        ),
        ),
      )
    );
  }
}
