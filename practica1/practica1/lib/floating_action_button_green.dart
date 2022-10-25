import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButyonGreen();
  }

}
class _FloatingActionButyonGreen extends State<FloatingActionButtonGreen>{
   bool pressed = false;

  void onPressedFav(){

    pressed = true;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Agregado a Favoritos")));

            child: Icon(Icons.favorite_border);

    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if(pressed ==false){
    return FloatingActionButton(

      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,

      child: Icon( Icons.favorite_border)
    );}
    else{
      return FloatingActionButton(

          backgroundColor: Color(0xFF11DA53),
          mini: true,
          tooltip: "Fav",
          onPressed: onPressedFav,

          child: Icon( Icons.favorite)
      );

    }

  }
  
}