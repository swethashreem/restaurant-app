import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class NewScreen2 extends StatefulWidget {
  NewScreen2(String bannerList, {super.key});

  @override
  State<NewScreen2> createState() => _NewScreen2State();
}

class _NewScreen2State extends State<NewScreen2> {
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
            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH1-nqmuc_VJnHDvK5nJ45RO-gxuD-BFdgbg&usqp=CAU',
            height:MediaQuery.of(context).size.height/1.7,fit: BoxFit.cover,),),
            Column(
              children: [
                Center(
                  child: Container(child: Text('Chinese',
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
