import 'package:flutter/material.dart';
import 'home_trip.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class PlatzyTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
        return _PlatzyTrips();
    }


}

class _PlatzyTrips extends State<PlatzyTrips>{
  int indexTap = 0;
  final List<Widget> WidgetsChildren=[
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }
  @override
  Widget build(BuildContext context) {



    // TODO: implement build

return Scaffold(
  body: WidgetsChildren[indexTap],
  bottomNavigationBar: Theme(
    data: Theme.of(context).copyWith(
      canvasColor: Colors.white,
      primaryColor: Colors.purple
    ),
    child: BottomNavigationBar(
      onTap: onTapTapped,
      currentIndex: indexTap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: ""
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search),
          label: ""
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person),
          label: ""
          ),
        ]),

  )



);  }
  
}