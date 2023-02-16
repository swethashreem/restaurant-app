// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class NewScreen extends StatelessWidget {
   NewScreen(String bannerList, {super.key});

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
        // backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(padding: EdgeInsets.only(top: 25,left: 15,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                 print('clicked');
       Navigator.push(
                        context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),));
              },
              child: Icon(Icons.arrow_back_ios_new,
              color: Colors.black,size: 32,),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child: Image.network('https://images.pexels.com/photos/1583884/pexels-photo-1583884.jpeg?au',
            height:MediaQuery.of(context).size.height/1.7,fit: BoxFit.cover,),),
            Column(
              children: [
                Center(
                  child: Container(child: Text('French Fries',
                  style: TextStyle(fontSize: 20,color: Colors.black),),),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Description:',style: TextStyle(fontSize: 18,color: Colors.black),),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Fresh tomatoes, onions, arugula, kale, eggplants, bell peppers, spinach, zucchini, mushrooms and more. They all make flavorsome vegetarian pizza toppings. ',
                      style: TextStyle(fontSize: 20,color: Colors.black),),
                    )
                  ],
                )
                
              ],
            )
          ],
        ),
        ),
      ),
    );
  }
}
