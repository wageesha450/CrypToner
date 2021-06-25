import 'package:flutter/material.dart';
import 'package:freshproject/caps/crpto_cap.dart';
import 'package:freshproject/news/crypto_news.dart';

import 'setting/setting.dart';



class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
  Text('Signal'),
  NewsPage(),
  CrptoCap(),
  SettingPage(),
  // ignore: missing_required_param
 
 
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      

      body: Center( 
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
       
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            title: Text('Home',style: TextStyle(color: Colors.white, ),),
            backgroundColor: Colors.indigo[900],
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            title: Text('News',style: TextStyle(color: Colors.white, ),),
             backgroundColor: Colors.indigo[900],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            title: Text('MarketCap', style: TextStyle(color: Colors.white, ),
            ),
             backgroundColor: Colors.indigo[900],
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('setting', style: TextStyle(color: Colors.white, ),
            ),
             backgroundColor: Colors.indigo[900],
          ),
          
          
        ],

        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
