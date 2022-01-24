import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

 class MyApp extends StatelessWidget {
   const MyApp({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       initialRoute: 'homepage',
       routes: {
         'homepage':(context) =>   const HomePage(),
        

       },
       theme: ThemeData.dark(),
       title: 'Picture Carousal',
       
       
     );
   }
 }
 
 class HomePage extends StatefulWidget {
   const HomePage({ Key? key }) : super(key: key);
 
   @override
   _HomePageState createState() => _HomePageState();
 }
 
 class _HomePageState extends State<HomePage> {

   final _imagepaths = [
     'images/IMG-20200120-WA0001.jpg',
     'images/IMG-20200120-WA0002.jpg',
     'images/IMG-20200120-WA0003.jpg',
     'images/IMG-20200120-WA0004.jpg',
     'images/IMG-20200120-WA0005.jpg',
     'images/IMG-20200120-WA0006.jpg',
     'images/IMG-20200120-WA0007.jpg',
     'images/IMG-20200120-WA0008.jpg',
     'images/IMG-20200120-WA0009.jpg',
     //'images/IMG-20200120-WA00010.jpg',
   ];
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Center(
           child: Text(
             'Picture carousal', 
             style: TextStyle(
               fontSize: 30,
               color: Colors.black,

             ),
            ),
           ),
         ),


         body: SafeArea(
           child: Center(child: CarouselSlider(items: _imagepaths.map((imagepath) => Builder(
             builder: (context) {
               return Container(
                 margin: const EdgeInsets.symmetric(horizontal: 4),
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     fit: BoxFit.fill,
                     image: AssetImage(imagepath),
                     ),
                    ),
                   );
                  
             }
           )).toList(),
           
            options: CarouselOptions(autoPlay: true) ,)),
           ),
       
     );
   }
 }