import 'package:app_ui/widgets/Image.dart';
import 'package:app_ui/widgets/Place_Widget.dart';
import 'package:app_ui/widgets/container_icon.dart';
import 'package:app_ui/widgets/visa.dart';
import 'package:flutter/material.dart';

import '../widgets/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   double Screenwidth=MediaQuery.of(context).size.width;

    return Scaffold(
appBar: AppBar(
  leading:const Icon(Icons.menu,size: 35,), 
  title:const Text('FickleFlight',style: TextStyle(fontSize:40,color: Colors.blueAccent),),
  centerTitle: true,
  actions:const [Padding(
    padding:  EdgeInsets.all(8.0),
    child: CircleAvatar(radius: 25,backgroundImage: AssetImage('assets/images/368000679_2049728725370419_2219844235078398891_n.jpg'),),
  )],
),


body: Column(
   crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  ImageOverlay(),
 const Padding(
  padding: const EdgeInsets.only(top:8.0,left: 20),
   child: Text('Upcoming Flights',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
 ),
const SizedBox(height: 5,),
const SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child:  Row(
    children: [
    Containericon(ground: Colors.blueAccent, ico: Icon(Icons.flight,size: 30,color: Colors.white,), text: 'Flight',),
    Containericon(ground: Color(0xffF9668D), ico: Icon(Icons.hotel,size: 30,color: Colors.white,), text: 'Hotels',),
    Containericon(ground: Color(0xffFF9B53), ico: Icon(Icons.attractions,size: 30,color: Colors.white,), text: 'Attractions',),
    Containericon(ground: Color(0xff36DA76), ico: Icon(Icons.food_bank,size: 30,color: Colors.white,), text: 'Eats',),
    Containericon(ground: Color(0xffFDBF00), ico: Icon(Icons.commute_sharp,size: 30,color: Colors.white,), text: 'Commutes',),
    Containericon(ground: Colors.red, ico: Icon(Icons.room,size: 30,color: Colors.white,), text: 'Rooms',),
    ]
  ),
),

const SizedBox(height: 15,),

const Row(children: [
  Expanded(child: Text('Trending Destinations',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
  Text('see all',style: TextStyle(fontSize: 15,color: Colors.blueAccent),),
],),
 
const SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
    PlacesWidget(imageAsset: 'assets/images/pexels-szelei-robert-543378-1482193.jpg', placeName: 'Boracay', countryName: 'Philippines',description: 'Philippine Sea, section of the western North Pacific Ocean, lying east and north of the Philippines. The floor of this portion of the ocean is formed into a structural basin by a series of geologic folds and faults that protrude above the surface in the form of bordering island arcs',price: 1250,),
    PlacesWidget(imageAsset: 'assets/images/pexels-asadphoto-1483053.jpg', placeName: 'Baros', countryName: 'Maldives',description: 'Philippine Sea, section of the western North Pacific Ocean, lying east and north of the Philippines. The floor of this portion of the ocean is formed into a structural basin by a series of geologic folds and faults that protrude above the surface in the form of bordering island arcs',price: 2200,),
    PlacesWidget(imageAsset: 'assets/images/pexels-asadphoto-1287460.jpg', placeName: 'Bali', countryName: 'Indonsia',description: 'Philippine Sea, section of the western North Pacific Ocean, lying east and north of the Philippines. The floor of this portion of the ocean is formed into a structural basin by a series of geologic folds and faults that protrude above the surface in the form of bordering island arcs',price: 1580,),
    PlacesWidget(imageAsset: 'assets/images/pexels-asadphoto-1320686.jpg', placeName: 'Palawan', countryName: 'Philippines',description: 'Philippine Sea, section of the western North Pacific Ocean, lying east and north of the Philippines. The floor of this portion of the ocean is formed into a structural basin by a series of geologic folds and faults that protrude above the surface in the form of bordering island arcs',price: 1500,),
    ],
  ),
),
SizedBox(height: 15,),
const SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
    Visa(cardimage: 'assets/images/visaclassiccredit-400x225.webp', offers: '20% discount for master cart users')
    ],
  ),
)
],
),
bottomNavigationBar: Navbar(),
    );
  }
}