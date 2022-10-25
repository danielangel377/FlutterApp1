import 'package:flutter/material.dart';
import 'package:practica1/review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        Review("assets/img/imagen1.jpeg", "Varuna Yasas", "1 review - 5 Photos", "There is an amazin place in Sri Lanka "),
        Review("assets/img/imagen2.jpg", "Varuna Yasas", "1 review - 5 Photos", "There is an amazin place in Sri Lanka "),
        Review("assets/img/imagen3.jpg", "Varuna Yasas", "1 review - 5 Photos", "There is an amazin place in Sri Lanka ")

      ],

    );
  }

}