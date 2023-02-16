// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, prefer_equal_for_default_values
import 'package:flutter/material.dart';
import 'package:flutter_restaurant/description.dart';
import 'DrawerMenu.dart';
import 'NewScreen1.dart';
import 'NewScreen2.dart';
import 'NewScreen.dart';
import 'colors.dart';
import 'DetailScreen.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  // const HomeScreen({super.key});
  final List<String> bannerList=[

     "https://images.pexels.com/photos/1583884/pexels-photo-1583884.jpeg?au",
     "https://b.zmtcdn.com/data/pictures/chains/7/54397/f95648e16d0fba3afc9c63e06b982c5b_o2_featured_v2.jpg",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH1-nqmuc_VJnHDvK5nJ45RO-gxuD-BFdgbg&usqp=CAU",
  ];

  List<String> foodName=[
       "French Fries",
       "Continental",
       "Chinese"
   ];

   List<String> hotelName=[
      "Cafe Western Food",
      "La Fresco",
      "Fusion Bistro"
   ];

   List<String> rating=[
       '4.5',
      '5.0',
      '3.2',
   ];

    List<String> amount=[
      '\$5',
      '\$10',
      '\$50',
   ];

  List<String> rateCount=[
    "128 rating",
    "137 rating",
    "150 rating"
  ];

  double translateX=0.0;
  double translateY=0.0;
  double scale=1;
  bool toggle=false;
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController=
    AnimationController(
      vsync:this,duration: Duration(milliseconds: 500));
    super.initState();
  }

  @override
Widget build(BuildContext context) {
  
return Stack(
  children: [
    DrawerMenu(),
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          transform: Matrix4.translationValues(translateX, translateY, 0)..
          scale(scale),
          child: ClipRRect(
            borderRadius: (toggle)?BorderRadius.circular(20):BorderRadius.circular(0),
            child: Scaffold(
              
              appBar: AppBar(
              
                leading: IconButton(
                
                       icon: AnimatedIcon(
                        icon: AnimatedIcons.menu_arrow, color:Colors.black,
                        progress:_animationController),
            //        icon:Icon(Icons.menu,
              
            //  color: Colors.black,), 

             onPressed: () { 
                  toggle=!toggle;
               if(toggle){
                translateX=200;
                translateY=80;
                scale=0.8;
                _animationController.forward();
               }
               else{
                translateX=0.0;
                translateY=0.0;
                scale=1;
                _animationController.reverse();
               }
               setState((){
                
               });
              },),
              
              
              backgroundColor: Colors.transparent,
              
              //backgroundColor: Colors.white,
              
              toolbarHeight: 70, 
              
              elevation: 0.0,
              
              title: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
              
                // DrawerMenu(),
              
              Text("Delivering to",
              
              style: Theme.of(context)
              
              .textTheme
              
              .subtitle2
              
              ?.copyWith(color: Colors.black45),
              
              // style:TextStyle(color:Colors.grey),),
              
              ),
              
              InkWell(
              
              onTap: () {
              
              print("clicked");
              
              },
              
              child: Row(
              
              mainAxisSize: MainAxisSize.min,
              
              children: [
              
              Text("Current Location",
              
              style: Theme.of(context)
              
              .textTheme
              
              .headline6
              
              ?.copyWith(fontWeight: FontWeight.bold),
              
              // style:TextStyle(color:Colors.grey),),
              
              ),
              
              Icon(Icons.keyboard_arrow_down,
              
              color: primaryColor,
              
              size:30,),
              
              ],
              
              ),
              
              ),
              
              ],
              
              ),
              
              ),
              
              body: SingleChildScrollView(
              
              child: Padding(
              
              padding: const EdgeInsets.all(8.0),
              
              child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
              
              Row(
              
              children: [
              
              Expanded(
              
              child: Container(
              
              height: 45,
              
              margin: EdgeInsets.symmetric(vertical:5),
              
              padding:EdgeInsets.only(left: 5),
              
              decoration: BoxDecoration(
              
              color: Colors.grey.shade300,
              
              borderRadius: BorderRadius.circular(30),
              
              ),
              
              child: Material(
              
              color: Colors.transparent,
              
              borderRadius: BorderRadius.circular(30),
              
              child: InkWell(
              
              borderRadius: BorderRadius.circular(30),
              
              onTap: () { 
              
              },
              
              child: Row(
              
              children: [
              
              Image.asset('assets/SEARCH_ICON.png',
              
              height: 18,
              
              width: 18,
              
              color: Colors.black,
              
              ),
              
              SizedBox(width: 10),
              
              Text("Search Foods",
              
              style: Theme.of(context)
              
              .textTheme
              
              .subtitle1
              
              ?.copyWith(color: Colors.black45),
              
              ),
              
              ],
              
              ),
              
              ),
              
              ),
              
              ),
              
              ),
              
              IconButton(
              
              onPressed:() {},
              
              icon : Image.asset('assets/FILTER_ICON.png',
              
              height:18,
              
              width:18,
              
              color: primaryColor,
              
              ),
              
              ),
              
              ],
              
              ),
              
              SizedBox(height: 20),
              
              titleWidget(context,"Category"),
              
              Container(
              
              height: 115,
              
              child: ListView.builder(
              
              shrinkWrap: true,
              
              scrollDirection: Axis.horizontal,
              
              // physics: const NeverScrollableScrollPhysics(),
              
              itemCount: listCards.length,
              
              itemBuilder: (context, index) {
              
              return Categorycard(categoryModel:listCards[index],); 
              
              }),
              
              ),
              
              titleWidget(context, "Popular"),
              
              for(int i=0;i<bannerList.length;i++)...{
              
              Container(
              
              margin: EdgeInsets.symmetric(vertical: 15),
              
              decoration: BoxDecoration(
              
              color: Colors.grey.shade100,
              
              borderRadius: BorderRadius.circular(10),
              
              boxShadow:[
              
              BoxShadow(
              
              color:Colors.grey.shade300,
              
              spreadRadius: 5,
              
              blurRadius: 5
              
              )
              
              ]
              
              ),
              
              child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children:[
              
              //[Image.network(bannerList[0]),
              
              InkWell(
              
                onTap: () {
              
                 Navigator.push(
              
                    context,
              
                        MaterialPageRoute(
              
                            builder: (context) => 
                            DetailScreen(
                              imageName: 'https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')));

              
                },
              
              child:Container(
              
              height: 220,
              
              margin: EdgeInsets.only(bottom: 5),
              
              decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(10),
              
              image: DecorationImage(image:NetworkImage(bannerList[i]),
              
              fit: BoxFit.cover),
              
              ),
              
              ),),
              
              Text(foodName[i], style: TextStyle(
              
              color: Colors.black,
              
              fontSize: 18,
              
              fontWeight: FontWeight.bold),
              
              ),
              
              Row(children: [
              
              Icon(Icons.star,
              
              color: primaryColor,
              
              ),
              
              Text(rating[i],
              
              style:TextStyle(color:primaryColor),),
              
              Text(rateCount[i]),
              
              Spacer(),
              
              Padding(
              
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              
              child: Text(hotelName[i]),
              
              ),
              
              Text(amount[i]),
              
              ],
              
              ),
              
              ],
              
              )
              
              ),
              
              }
              
              ],
              
              ),
              
              ),
              
              ),
              
              ),
          ),
        ),
  ],
);
}

Widget titleWidget(BuildContext context,String title) {
return Text(title,
style: Theme.of(context)
.textTheme
.headline6
?.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
);
}
}
class Categorycard extends StatelessWidget {
final CategoryModel categoryModel;
Categorycard({
required this.categoryModel
}) ;
@override
Widget build(BuildContext context) {
return Column(
children: [
Container(
padding: EdgeInsets.all(15),
margin: EdgeInsets.only(top: 5,bottom: 2,right: 5,left: 8),
height: 70,
width: 70,
decoration: BoxDecoration(
color: Colors.green.withOpacity(0.3),
borderRadius: BorderRadius.circular(10),
),
child: Image.asset(categoryModel.imageUrl),
),
Text(categoryModel.title,
style: Theme.of(context)
.textTheme
.subtitle2
?.copyWith(fontWeight: FontWeight.bold,
color: Colors.black87))
],
);
}
}
class CategoryModel{
String imageUrl;
String title;
String remoteUrl;
CategoryModel(this.imageUrl,this.title,
{required this.remoteUrl} );
}
List <CategoryModel> listCards=[
CategoryModel("assets/demo/offer1.png",'Offer', remoteUrl:""),
CategoryModel("assets/demo/drink1.png",'Drinks', remoteUrl:""),
CategoryModel("assets/demo/pizza.png",'Pizza', remoteUrl: ""),
CategoryModel("assets/demo/burger.png",'Burger', remoteUrl: ""),
CategoryModel("assets/demo/shawarma.png",'Shawarma', remoteUrl:""),
];
class PopularItemModel {
String imageUrl;
String foodName;
String hotelName;
double rating;
double amount;
int rateCount;
PopularItemModel (
{
required this.imageUrl,
required this.foodName,
required this.hotelName,
required this.rating,
required this.amount,
required this.rateCount,
} 
);
}