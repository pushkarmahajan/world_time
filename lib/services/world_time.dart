import 'package:http/http.dart';
import 'dart:convert';

class Worldtime {
    String location;
    String time;
    String flag;
    String url;

    Worldtime({this.location, this.flag, this.url});

    Future<void> getTime() async{
        try { // make the request
            Response response = await get('https://worldtimeapi.org/api/timezone/$url');
            Map data = jsonDecode(response.body);
            // print(data);

            //get properties from json data
            String datetime = data['datetime'];
            String offset = data['utc_offset'].substring(1, 3);

            //create DateTime object
            DateTime now = DateTime.parse(datetime);
            now = now.add(Duration(hours: int.parse(offset)));

            // set the time property
            time = now.toString();
        }
        catch(e){
            print('caught error $e');
            time = "Unable to fetch time";
        }
    }
}


