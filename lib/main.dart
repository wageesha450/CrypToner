import 'package:flutter/material.dart';

import 'onBoarding/loading.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CrypToner',
      theme: ThemeData(
        
        scaffoldBackgroundColor: const Color(0xFF04093F),

        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          
        )
        
      ),

     
      home:LoadingPage(),
    );
  }
}



