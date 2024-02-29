import 'package:flutter/material.dart';

class bottom extends StatelessWidget {
  const bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [

            Text("Contact Us"),
            Text("support@gmail.com"),



            Text("CUSTOMER SERVICES"),
            Text("Partner with SOS"),
            Text("Store Locator"),
            Text("REfund & Return"),
            Text("Contact us"),
            Text("Blogs"),
            Text("FAQ"),



            Text("INFORMATION"),
            Text("About us"),
            Text("Certificates"),
            Text("Privacy Policy"),
            Text("Terms & Condtions"),
            Text("Sold Out"),


            Text("@ Source of supplements")

          ],
        ),
      ),
    );
  }
}