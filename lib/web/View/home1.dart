import 'dart:convert';

import 'package:dottedcarasoulslider/dottedcarasoulslider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gym/web/bottom.dart';


class home1 extends StatefulWidget {
  const home1({super.key});

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {

  List a =[];
  
  List b =[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    load();
    load2();
  }

  Future<void> load()async{
    String data = await rootBundle.loadString("assets/brand.json");
    setState(() {
      a = jsonDecode(data);
    });
  }

  Future<void> load2()async{
    String data2 = await rootBundle.loadString("assets/tranding.json");
    setState(() {
      b = jsonDecode(data2);
    });
  }




  
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(title: Text("Beard & Muscle",style: TextStyle(color: Colors.white),),

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

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
          
          
          
                SafeArea(
                  child: Container(
                    // margin: EdgeInsets.all(5),
                    height: 180,
                    width: 1*w,
                    child: SingleChildScrollView(
                      scrollDirection:Axis.horizontal,
                      child: Row(
                        children: [
                         Container(
                          width: 1*w,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/one.jpg"),fit: BoxFit.cover)
                          ),
                         ),
          
                         Container(
          
                          width: 1*w,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/two.png"),fit: BoxFit.cover)
                          ),),
                          Container(
                          width: 1*w,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/one.jpg"),fit: BoxFit.cover)
                          ),
                         ),
                         Container(
          
                          width: 1*w,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/two.png"),fit: BoxFit.cover)
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),
          
          
                //Trending in Protein
                Text("Trending in Protein",style: TextStyle(color: Colors.red,fontSize: 20),),
          
                 Container(
                  height: 0.4*h,
                  width: 1*w,
                   child: Expanded(
                                child: ListView.builder( 
                                 itemCount: b.length,
                                 scrollDirection: Axis.horizontal,
                               
                               itemBuilder: (BuildContext context, int index){
                                 return Container(
                    height: 300,
                    width: 250,
                    // color: Colors.yellow,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          height: 120,
                          width: 120,
                          child: Image.network(b[index]['img'].toString(),fit: BoxFit.fill,),
                          
                        ),
                        Container(
                          height: 20,
                          width: 200,
                          child: Text(b[index]['title'].toString()),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 90),
                          height: 50,
                          width: 200,
                          child: Row(
                            children: [
                              Text('',style: TextStyle(fontSize: 20,color: Colors.red),),
                              Text(b[index]['price'].toString(),style: TextStyle(color: Colors.red,fontSize: 20),),
                            ],
                          ),
                        ),
                        SizedBox(height: 1,),
                        
                           ElevatedButton(
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
                            onPressed: (){
                          
                          }, child: Text("   Add to Cart   ",style: TextStyle(color: Colors.white),)),
                        
                   
                      ],
                    ),
                                 );
                               }
                                ),
                              ),
                 ),
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
                //Brands Section
          
                
                SizedBox(height: 100,),          
                 Container(
          height: 1*h,
          width: 1*w,
           child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            ),
            itemCount: a.length,
            itemBuilder: (BuildContext context, int index) {
              return GridTile(
                child: Image.network(
                  a[index]['img'],
                  fit: BoxFit.cover,
                ),
              );
            },
                ),
                 ),
                

                //Bottombar

                Container(
                  height: 400,
                  width: 1*w,
                  child: bottom(),

                ),
               
          
          
          
               
            ],
          ),
        ),
      ),



//api calling







    );
  }
}