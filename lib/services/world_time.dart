import 'package:http/http.dart';
import 'package:world_time/pages/home.dart';
import 'dart:convert';

class WorldTime{

      late String location;//location for ui
      late String time;//the time in that location
      late String flag;//url to an asset flag icon
      late String url;//location url for api endpoint


      void getTime() async {

            Response response = await	get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
            Map data =  jsonDecode(response.body);
            // print(data);
            //get properties
            String datetime =data['datetime'];


            //create datetime object
            DateTime now =DateTime.parse(datetime);
            time =now.toString();
      }







}