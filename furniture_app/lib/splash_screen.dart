import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:furniture_app/widgets.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      body: Stack(
        children: [
        Padding(
          padding: const EdgeInsets.only(top: 70,left: 40),
          child: Column(
                children: [
                  Text('| Furniture',style: TextStyle(fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),

                  Text('in your ',style: TextStyle(fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),

                  Text('style     ',style: TextStyle(fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),

                  SizedBox(height: 70,),



            ],
          ),
        ),

          Padding(
            padding: const EdgeInsets.only(top: 650,left: 70),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                height: 40,
                width: 245,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.teal.shade600
                ),
                child: Center(
                  child: Text('Get Started >',style: TextStyle(
                    color: Colors.white,
                  ),),
                ),
              ),
            ),
          ),

          Positioned(
            top: 13,
           // bottom: 0,
           // right: 71,
            left: 286,
            child: CustomPaint(
              size: Size(200, 100), // define canvas size
              painter: ArcPainter(),
            ),
          ),

          Positioned(
            top: 238,
            // bottom: 0,
             right: 295,
            //left: 6,
            child: CustomPaint(
              size: Size(160, 100), // define canvas size
              painter: ArcPainterr(),
            ),
          ),

          Positioned(
            top: 335,
            // bottom: 0,
            //right: 295,
            left: 200,
            child: CustomPaint(
              size: Size(290, 100), // define canvas size
              painter: ArcPainterrr(),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 290),
            child: Positioned(child:
             Image.asset('assets/images/pngwing.com (1).png',
              width: 380,
              height: 290,
            ),
            ),
          ),

        ],
      ),

    );
  }
}




