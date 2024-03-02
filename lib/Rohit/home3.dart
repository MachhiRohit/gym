import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home4 extends StatefulWidget {
  const home4({super.key});
  
  
  @override
  State<home4> createState() => _home3State();
}

class _home3State extends State<home4> {

  List<dynamic> gym = [];
    void initState() {
    super.initState();
    loadJSONData();
  }

  Future<void> loadJSONData() async {
    String data =  await DefaultAssetBundle.of(context).loadString('assets/data.json');
    setState(() {
      gym = json.decode(data)['labrada_nutrition'];
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
  //     appBar: AppBar(title: Image.asset("name"),

  //     leading:Icon(Icons.menu,color: Colors.white,) ,
  // backgroundColor: Colors.black,
  //     actions: [
  //       Icon(CupertinoIcons.cart_fill,color: Colors.white,)
  //     ],
  //     centerTitle: true,
      
  //     ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.black,
        child: Column(
          children: [
           Text("Trending in Protein"),
           Row(
            children: [
              Text("View All",style: TextStyle(color: Colors.white),),
              Icon(Icons.arrow_right,color: Colors.white,)
            ],
           ),

           Expanded(
            
             child: ListView.builder( 
              itemCount: gym.length,
              scrollDirection: Axis.horizontal,
            
            itemBuilder: (BuildContext context, int index){
              return Container(
                height: 300,
                width: 250,
                color: Colors.yellow,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      height: 150,
                      width: 200,
                      child: Image.network(gym[index]['img'].toString(),fit: BoxFit.fill,),
                      // decoration: BoxDecoration(color: Colors.red,
                      //   image: DecorationImage(image: NetworkImage(gym[index]['images'].toString()),fit: BoxFit.cover)
                      // ),
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      child: Text(gym[index]['title'].toString()),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 90),
                      height: 50,
                      width: 200,
                      child: Row(
                        children: [
                          Text('₹ ',style: TextStyle(fontSize: 20,color: Colors.red),),
                          Text(gym[index]['original_price'].toString(),style: TextStyle(color: Colors.red,fontSize: 20),),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    
                       ElevatedButton(
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
                        onPressed: (){
                      
                      }, child: Text("   Add to Cart   ",style: TextStyle(color: Colors.white),)),
                    

                  ],
                ),
              );



            }
            

             ),
           )
          ],
        ),
      ),
    );
  }
}