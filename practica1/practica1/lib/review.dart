import 'package:flutter/material.dart';
class Review extends StatelessWidget{

  String pathImage ;
  String name;
  String details;
  String coment;

  Review(this.pathImage, this.name, this.details, this.coment
      );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

  final userComant = Container(
    margin: EdgeInsets.only(
      left: 20.0
    ),
    child: Text(
      coment,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 13.0,
        fontFamily: "Lato",
          fontWeight: FontWeight.w600
      ),
    ),
  );

    final star = Container(
      margin: EdgeInsets.only(
        left: 5,
      ),
      child: Icon(
        Icons.star,
        size: 12,
        color: Color(0xFFf2C611),

      ),

    );

    final star_half = Container(
      margin: EdgeInsets.only(
        left: 5,
      ),
      child: Icon(
        Icons.star_half,
      size: 12,
      color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container(
      margin:  EdgeInsets.only(
        left: 5
      ),
      child: Icon(
        Icons.star_border,
        size: 12,
        color: Color(0xFFf2C611),
      ),
    );

  final userInfo = Row(
    children: <Widget>[
      Container(
          margin: EdgeInsets.only(
              left: 20.0
          ),

          child: Text(
              details,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 13.0,
                  color: Color(0xFFa3a5a7),
                  fontFamily: "Lato"
              )
          )
      ),
      Row(
        children: <Widget>[
          star,
          star,
          star,
          star_half,
          star_border
        ],
      ),
    ],
  );

    final userName = Container(
        margin: EdgeInsets.only(
          left: 20.0
        ),

        child: Text(
          name,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 17.0,
            fontFamily: "Lato"
          ),
        ),
      );


   /* final userName = Container(
      margin: EdgeInsets.only(
        left:  20.0
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato"
        ),
      ),
    );*/


  final photo = Container(
    margin: EdgeInsets.only(
      top: 20.0,
      left:  20.0
    ),
    width:  80.0,
    height: 80.0,

    decoration: BoxDecoration(
    shape: BoxShape.circle,  //redondea la imagen
      image: DecorationImage(
        fit: BoxFit.cover, //centra la imagen dentro del contenedor
          image: AssetImage(pathImage)
      )

  )
  );

  final userDetails = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      userName,
      userInfo,
      userComant
    ],

  );

  return Row(
    children: <Widget>[
      photo,
      userDetails,

    ]
  );

  }

}