import 'package:flutter/material.dart';
import 'package:furniture_app/splash_screen.dart';
import 'package:provider/provider.dart';
import 'favourite_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
        providers: [
        ChangeNotifierProvider(create: (_) => FavouriteItemProvider()),
    ],
     child:MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    )
    );
  }
}


