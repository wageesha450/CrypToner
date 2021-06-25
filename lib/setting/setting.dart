import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
 

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("SETTINGS"),
        backgroundColor: Colors.indigo[900]
      ),

      body: Container(  
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(height: 40),
            Column( 
              children:<Widget> [ 
                
                SizedBox(width: 10),
                Align(alignment: Alignment.topLeft,
                child: Text("THEME",
                style: TextStyle(fontSize: 22, fontWeight:FontWeight.bold,),
                ),

                ),
                 

              Align(alignment: Alignment.topLeft,
                child: Text("Switch to Light mode",
                style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold,),
                ),

                ),

              Divider(height: 20, thickness: 1, color: Colors.white,),
              SizedBox(height:10),

              




              SizedBox(width: 10),
                Align(alignment: Alignment.topLeft,
                child: Text("CONTENT",
                style: TextStyle(fontSize: 22, fontWeight:FontWeight.bold,),
                ),

                ),


                 Align(alignment: Alignment.topLeft,
                child: Text("Push Notifications",
                style: TextStyle(fontSize: 22, fontWeight:FontWeight.bold,),
                ),

                ),
                  Align(alignment: Alignment.topRight,
                  child: Icon(Icons.arrow_forward_ios,
                  color: Colors.white,),
                  ),
              Divider(height: 20, thickness: 1, color: Colors.white,),
              SizedBox(height:10),

              




              SizedBox(width: 10),
                Align(alignment: Alignment.topLeft,
                child: Text("App Sounds",
                style: TextStyle(fontSize: 22, fontWeight:FontWeight.bold,),
                ),

                ),
                 
              Divider(height: 20, thickness: 1, color: Colors.white,),
              SizedBox(height:10),

              

              SizedBox(width: 10),
                Align(alignment: Alignment.topLeft,
                child: Text("Favourites",
                style: TextStyle(fontSize: 22, fontWeight:FontWeight.bold,),
                ),

                ),
                  Align(alignment: Alignment.topRight,
                  child: Icon(Icons.arrow_forward_ios,
                  color: Colors.white,),
                  ),
              Divider(height: 20, thickness: 1, color: Colors.white,),
              SizedBox(height:10),

              SizedBox(width: 10),



              SizedBox(width: 10),
                Align(alignment: Alignment.topLeft,
                child: Text("account",
                style: TextStyle(fontSize: 22, fontWeight:FontWeight.bold,),
                ),

                ),
                  Align(alignment: Alignment.topRight,
                  child: Icon(Icons.arrow_forward_ios,
                  color: Colors.white,),
                  ),
              Divider(height: 20, thickness: 1, color: Colors.white,),
              SizedBox(height:10),

              SizedBox(width: 10), 

              
              ],
            ),
            
          ],
          ),
      ),
    );
  }
}