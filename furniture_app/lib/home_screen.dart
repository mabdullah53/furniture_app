import 'package:flutter/material.dart';
import 'package:furniture_app/favourite_screen.dart';
import 'package:furniture_app/order_screen.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'favourite_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

List<int> selectedItem = [];
  // List<int> get selectedItem => _selectedItem ;
  //
  // void addItem(int value){
  //    selectedItem.add(value);
  //   setState(() {
  //
  //   });
  //
  // }
  //
  //
  // void removeItem(int value){
  //   selectedItem.remove(value);
  //   setState(() {
  //
  //   });
  //
  // }


  List<String> categories =[
    'All',
    'Chairs',
    'Tables',
    'Sofas',
    'Bed',
  ];

  List<String> products =[
    'St Chair',
    'sofa Chair',
    'bed sofa',
    'Sofas',
    'rel chair',
  ];

  List<dynamic> price =[
    '\$45',
    '\$75',
    '\$78',
    '\$85',
    '\$95',
  ];
  
  

  List<String> imageUrls =[
    'assets/images/pngwing.com (3).png',
    'assets/images/pngwing.com (7).png',
    'assets/images/pngwing.com (5).png',
    'assets/images/pngwing.com (6).png',
    'assets/images/pngwing.com (4).png',

  ];




  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteItemProvider> (context);
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60,left: 20),
                      child: Text('Find your \nDream Furniture',style: TextStyle(
                          color: Colors.black54,
                          fontSize: 28,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 75,left: 80),
                      child: Container(
                        height: 50,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.shade200,
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Icon(Icons.search,color: Colors.black38,),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
            
                Container(
                    height: 120,
                    width: 330,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.teal.shade100
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 35,left: 35,),
                              child: Text('20% OFF',style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600
                              ),),
                            ),
                          ],
                        ),
            
                        Padding(
                          padding: const EdgeInsets.only(right: 180),
                          child: Text('Until 24Dec',style: TextStyle(
                            color: Colors.black38
                          ),),
                        ),
            
                      //  SizedBox(height: 50,),
            
                      ],
                    )
                ),
                SizedBox(height: 20,),
                SizedBox(height: 60,
            
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                      itemBuilder: (context,index){
                        return Container(
                          margin: EdgeInsets.all(8),
                          height: 50,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            color: Colors.blueGrey.shade200
                          ),
                          child: Center(
                            child: Text(categories[index],style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        );
                      }
                  ),
                ),
            
                SizedBox(height: 15,),
            
                SizedBox(
                  height: 320,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                      itemBuilder: (context,index){
                      return Consumer<FavouriteItemProvider>(builder: (context,value,child){
                         return Container(
                          margin: EdgeInsets.all(8),
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.lime.shade50
                          ),
                          child: Column(
                          //  mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,left: 110),
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35),
                                        color: Colors.orangeAccent.shade700,
                                      ),
                                      child: Center(
                                        child: GestureDetector(
                                            onTap: (){
            
            
                                               // selectedItem.add(index);
                                                if(favouriteProvider.selectedItem.contains(index)){
                                                  favouriteProvider.removeItem(index);
                                                }else{
                                                  favouriteProvider.addItem(index);
                                                };
            
                                            },
                                          child: Icon(favouriteProvider.selectedItem.contains(index) ? Icons.favorite : Icons.favorite_border_outlined,color: Colors.white,size: 18,)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
            
                              Image.asset(imageUrls[index]),
                              SizedBox(height: 14,),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(products[index],style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
            
                                ),),
                              ),
                              SizedBox(height: 10,),
            
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(price[index]),
                                ),
            
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OrderScreen(imageUrls: imageUrls[index], products: products[index], price: price[index]) ));
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(23),
                                        color: Colors.teal.shade600
                                      ),
                                      child: Center(
                                        child: Text('Add To Cart',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold
                                        ),),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            ],
                          )
                        );
                      }
                      );
                      }
                  ),
                ),
                SizedBox(height: 15,),
            
                Container(
                  height: 55,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      color: Colors.blueGrey.shade600
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.home_outlined,color: Colors.blueGrey.shade50,),
            
                        GestureDetector(
                            onTap: (){
            
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> FavouriteScreen()));
                            },
            
                            child: Icon(Icons.favorite_border_outlined,color: Colors.blueGrey.shade50,)),
            
                        Icon(Icons.cleaning_services,color: Colors.blueGrey.shade50,),
            
                        Icon(Icons.person,color: Colors.blueGrey.shade50,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),


          Positioned(
            top: 70,
            left: 130,
            child:

           Image.asset('assets/images/pngwing.com (2).png',
            width: 280,
            height: 290,
          ),
          ),
        ],
      )
    );
  }


}
class favouritee {
  List<int>_selectedItem = [];

  List<int> get selectedItem => _selectedItem;

  void addItem(int value) {
    _selectedItem.add(value);
  }

  void removeItem(int value) {
    _selectedItem.remove(value);
  }
}
