import 'package:flutter/material.dart';

class bottom extends StatelessWidget {
  const bottom({super.key});

  @override
  Widget build(BuildContext context) {

    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [

            Row(
              children: [
                Container(
                  height: 300,
                  width: 0.5*w,
                  child: Column(
                    children: [

            Text("Contact Us",style: TextStyle(color: Colors.white,fontSize: 20),),
            Text("support@gmail.com",style: TextStyle(color: Colors.white,fontSize: 20)),



 Text("INFORMATION",style: TextStyle(color: Colors.white,fontSize: 20)),
            Text("About us",style: TextStyle(color: Colors.white,fontSize: 20)),
            Text("Certificates",style: TextStyle(color: Colors.white,fontSize: 20)),
            Text("Privacy Policy",style: TextStyle(color: Colors.white,fontSize: 20)),
            Text("Terms & Condtions",style: TextStyle(color: Colors.white,fontSize: 20)),
            Text("Sold Out",style: TextStyle(color: Colors.white,fontSize: 20)),

                      
                    ],
                  ),
                ),


               Container(
                height: 300,
                width: 0.5*w,
                child: Column(
                  children: [

                      Text("CUSTOMER SERVICES",style: TextStyle(color: Colors.white,fontSize: 20)),
            Text("Partner with SOS",style: TextStyle(color: Colors.white,fontSize: 20)),
            Text("Store Locator",style: TextStyle(color: Colors.white,fontSize: 20)),
            Text("REfund & Return",style: TextStyle(color: Colors.white,fontSize: 20)),
            Text("Contact us",style: TextStyle(color: Colors.white,fontSize: 20)),
            Text("Blogs",style: TextStyle(color: Colors.white,fontSize: 20)),
            Text("FAQ",style: TextStyle(color: Colors.white,fontSize: 20)),


 Text("@ Source of supplements",style: TextStyle(color: Colors.white,fontSize: 20))
                  ],
                ),
               ),
              ],
            ),

           


          

           

           

          ],
        ),
      ),
    );
  }
}