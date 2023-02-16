class PopularItemModel{
  String imageUrl;
  String foodName;
  String hotelName;
  double rating;
  double amount;
  int rateCount;

  PopularItemModel(
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
List <PopularItemModel> Popular=[
PopularItemModel(imageUrl:"https://images.pexels.com/photos/1583884/pexels-photo-1583884.jpeg?au" , foodName: "french Fries", hotelName: "Cafe Western Food", rating: 4.5, amount: 5, rateCount:128 ),
PopularItemModel(imageUrl:"https://b.zmtcdn.com/data/pictures/chains/7/54397/f95648e16d0fba3afc9c63e06b982c5b_o2_featured_v2.jpg", foodName:  "Continental", hotelName:"La Fresco", rating: 5.0, amount: 10, rateCount: 135),
PopularItemModel(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH1-nqmuc_VJnHDvK5nJ45RO-gxuD-BFdgbg&usqp=CAU", foodName:   "Chinese", hotelName: "Fusion Bistro", rating: 3.5, amount: 50, rateCount: 150),
];


//  Navigator.push(
      //                   context,
      //                       MaterialPageRoute(
      //                         builder: (context) =>NewScreen(bannerList[0])));
      //                         Navigator.push(
      //                   context,
      //                       MaterialPageRoute(
      //                         builder: (context) =>NewScreen1(bannerList[1])));
      //                         Navigator.push(
      //                   context,
      //                       MaterialPageRoute(
      //                         builder: (context) =>NewScreen2(bannerList[2])));


      
  //  List<String> foodName=[
  //      "French Fries",
  //      "Continental",
  //      "Chinese"
  //  ];
   
  //  List<String> hotelName=[
  //     "Cafe Western Food",
  //     "La Fresco",
  //     "Fusion Bistro"
  //  ];
  //  List<String> rating=[
  //      '4.5',
  //     '5.0',
  //     '3.2',
  //  ];
  //   List<String> amount=[
  //     '5',
  //     '10',
  //     '50',
  //  ];
  // List<String> rateCount=[
  //   "128 rating",
  //   "137 rating",
  //   "150 rating"
  // ];
   