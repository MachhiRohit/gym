import 'package:dottedcarasoulslider/dottedcarasoulslider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class home1 extends StatefulWidget {
  const home1({super.key});

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {

  
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(title: Image.asset("name"),

      leading:Icon(Icons.menu,color: Colors.white,) ,
  backgroundColor: Colors.black,
      actions: [
        Icon(CupertinoIcons.cart_fill,color: Colors.white,)
      ],
      centerTitle: true,
      
      ),


      body: Container(
        height: double.infinity,
        width: double.infinity,

        child: Column(
          children: [

//Search Bar

            Container(
              height: 0.1*h,
              width: 1*w,
              decoration: BoxDecoration(color: Colors.black),
              child: Text("Search",style: TextStyle(color: Colors.grey),),
            ),


 //Banner

          
            // color: Colors.black,
       Expanded(
         child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
           child: DottedCarasoulSlider(
            showArrows: true,
            showDots: true,
            lefticon: Icons.abc,
            righticon: Icons.access_time_filled_outlined,
            autoplay: true,
            reverse: false,
            dotDirectionBottom: 0,
            dotDirectionLeft: 0,
            dotDirectionRight: 0,
            dotDirectionTop: 0,
            dotActiveColor: Colors.red,
            dotInActiveColor: Colors.yellow,
            iconColor: Colors.blue,
            iconSize: 50,
            imgUrls: const [
              "https://static.vecteezy.com/system/resources/thumbnails/026/781/389/small/gym-interior-background-of-dumbbells-on-rack-in-fitness-and-workout-room-photo.jpg",
              "https://static.vecteezy.com/system/resources/thumbnails/021/643/720/small/blurred-gym-background-created-with-generative-ai-photo.jpg",
              "https://img.freepik.com/premium-photo/exercising-sport-gym-workout-exercise-training-fitness-body-strong-fit-bodybuilding-healthy-lifestyle-people-doing-exercise-sportive-club-dumbbell-exercise_887181-663.jpg",
              "https://img.freepik.com/premium-photo/photo-people-exercising-gyms_883586-14166.jpg?size=626&ext=jpg&ga=GA1.1.1880011253.1699833600&semt=ais",
            ],
            
            duration: const Duration(seconds: 3),
            height: 1*h,
            fit: BoxFit.fill,
            width: 1*w,
            aspectRatio: 0.8,
                 ),
         ),
       ),
          



//api calling


      Container(
        height: 0.2*h,
        width: 1*w,
        color: Colors.black,
      ),

          ],
        ),
      ),



//api calling







    );
  }
}