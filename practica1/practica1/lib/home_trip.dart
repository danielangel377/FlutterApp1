import 'package:flutter/material.dart';
import 'package:practica1/review_list.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{
  String descriptionDummy = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id nisl in ex eleifend mattis. Sed in auctor risus. Aliquam a viverra justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sit amet odio eget lorem lobortis blandit. Proin pulvinar mi sed lorem hendrerit, vite feugiat nunc rhoncus \n \n"
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id nisl in ex eleifend mattis. Sed in auctor risus. Aliquam a viverra justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sit amet odio eget lorem lobortis blandit. Proin pulvinar mi sed lorem hendrerit, vite feugiat nunc rhoncus ";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

   return Stack(  //un elemento, lo pone encima de otro
      children: <Widget>[
        ListView(
          children: <Widget>[
            DESCRIPTIONPLACE("Bahamas", 4, descriptionDummy),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    )
    ;

  }

}