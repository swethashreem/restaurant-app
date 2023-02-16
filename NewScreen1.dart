import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class NewScreen1 extends StatefulWidget {
  NewScreen1(String bannerList, {super.key});

  @override
  State<NewScreen1> createState() => _NewScreen1State();
}

class _NewScreen1State extends State<NewScreen1> {
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
            child: Image.network('https://b.zmtcdn.com/data/pictures/chains/7/54397/f95648e16d0fba3afc9c63e06b982c5b_o2_featured_v2.jpg',
            height:MediaQuery.of(context).size.height/1.7,fit: BoxFit.cover,),),
            Column(
              children: [
                Center(
                  child: Container(child: Text('Continental',
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
