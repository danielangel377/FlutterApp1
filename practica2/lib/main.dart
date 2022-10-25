import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'models/Gif.dart';
import 'package:http/http.dart' as http;


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark
  ));
  runApp( MyApp());
}

class MyApp extends StatefulWidget{
  @override
 _MyAppState createState() => _MyAppState();
  }
class _MyAppState  extends State<MyApp>{
   late final Future<dynamic> _listadoGifs;

   _getGifs() async{
    final response = await http.get(Uri.parse("https://api.giphy.com/v1/gifs/trending?api_key=3UI2KrBcJBTSSO2YvZ5QJj4Wjrj1ADp6&limit=10&rating=g"));

    List<Gif> gifs = [];

    if(response.statusCode ==200) {
      String body = utf8.decode(response.bodyBytes) as String;
      final jsonData = jsonDecode(body);

      for(var item in jsonData["data"]){
        gifs.add(
          Gif(item["title"], item["images"]["downsized"]["url"])
        );
      }
      return gifs;


    }
    else{
      throw Exception("Fallo la conexion");
    }

  }


   @override
  void initState() {
    // TODO: implement initState
    super.initState();
  _listadoGifs = _getGifs();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Consumo de Api Gifs",
      home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: new Center(child: new Text("Consumo de Api Gifs", textAlign: TextAlign.center)),
        ),
        body: FutureBuilder(
            future: _listadoGifs,
          builder: (context, snapshot){
            if(snapshot.hasData){
              return GridView.count(
                crossAxisCount: 2,
                children: _listGifs(snapshot.data),
              );
            }
            else if(snapshot.hasError){
              print(snapshot.error);
              return Text("Error");
            }
            return Center(child: CircularProgressIndicator());
          }
        )
          ),
        );
  }
  List<Widget> _listGifs(List<Gif>data){
     List<Widget> gifs = [];

     for(var gif in data){
       gifs.add(Card(child: Column(
         children: [
           Expanded(child: Image.network(gif.url, fit: BoxFit.fill,)),

               Padding(padding: const EdgeInsets.all(8.0),

                 child: Text(gif.name,
                 textAlign: TextAlign.center,
                 style: const TextStyle(
                   fontSize: 16.0,
                   color: Color(0xFF56575A),
                 ),),
               )

         ],
       ))

       );
     }
     return gifs;
  }
}

