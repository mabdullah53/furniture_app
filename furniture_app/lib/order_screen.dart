import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
   OrderScreen({super.key, required this.imageUrls,required this.products,required this.price});

 // String categories;
  String products;
  String price;
  String imageUrls;

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {

  int count = 0;

  void setCount () {
    count++;
    setState(() {

    });
  }

  void decCount () {

    setState(() {
      if(count > 0){
        count--;
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              color: Colors.lime.shade50,
              image: DecorationImage(
                image: AssetImage(widget.imageUrls),
              )
            ),
          ),

          SizedBox(height: 15,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(widget.products,style: TextStyle(
                  color: Colors.black87.withOpacity(0.6),
                   fontSize: 22,
                  fontWeight: FontWeight.bold
                ),),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.price,style: TextStyle(
                    color: Colors.black87.withOpacity(0.6),
                    fontSize: 33,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ],
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text('High Quality Chair',style: TextStyle(
              fontSize: 16,
              color: Colors.black87.withOpacity(0.5)
            ),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 35,left: 8,),
            child: Text('A chair is a type of seat, typically designed for \none person and consisting of one or more legs, \na flat or slightly angled seat and a back-rest.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87.withOpacity(0.5)
            ),),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 17),
                child: Text('Color',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800
                ),),
              ),

              //SizedBox(height: 44,),

              Padding(
                padding: const EdgeInsets.only(top: 10,left: 20),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blueGrey,
                    boxShadow: [
                      BoxShadow(
                        color:Colors.blueGrey,
                        blurRadius: 8
                      )
                    ]
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,left: 14),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.teal.shade700,
                      boxShadow: [
                        BoxShadow(
                            color:Colors.teal.shade700,
                            blurRadius: 8
                        )
                      ]
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,left: 14),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.yellow.shade700,
                      boxShadow: [
                        BoxShadow(
                            color:Colors.yellow.shade700,
                            blurRadius: 8
                        )
                      ]
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 12,left: 70),
                child: GestureDetector(
                  onTap: (){
                    decCount();
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blueGrey.shade200.withOpacity(0.8),
                    ),
                    child: Center(
                      child: Text('-',style: TextStyle(
                        color: Colors.black87.withOpacity(0.7),
                        fontSize: 19,
                      ),),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 7,),

              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text('$count',style: TextStyle(
                    color: Colors.black87.withOpacity(0.6),
                  fontSize: 21
                ),),
              ),

              SizedBox(width: 7,),

              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: GestureDetector(
                  onTap: (){
                    setCount();
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blueGrey.shade200,
                    ),
                    child: Center(
                      child: Text('+',style: TextStyle(
                        color: Colors.black87.withOpacity(0.6),
                        fontSize: 22,
                      ),),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25,),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 55,
                  width: 285,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.teal.shade700
                  ),
                  child: Center(
                    child: Text('Add To Cart',style: TextStyle(
                      color: Colors.white,
                      fontSize: 19
                    ),),
                  ),
                ),
              ),
               SizedBox(width: 10,),

               Container(
                 height: 45,
                 width: 45,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(25),
                   color: Colors.blueGrey.shade200
                 ),
                 child: Center(child: Icon(Icons.shopping_cart_outlined,color: Colors.black87.withOpacity(0.5),)),
               )
            ],
          )



        ],
      ),
    );
  }
}
