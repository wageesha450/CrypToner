import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../dashboard.dart';

class FirstPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: IntroductionScreen(
        pages:[ 
          PageViewModel(
            image: Image.asset("assets/undraw_Metrics_re_6g90 1.png"),

            bodyWidget: Center( 
              child: Expanded(
                child: Text(
                   "Crypto Signal Dashboard will help you to understand the market analysis",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     color:Colors.white,
                     shadows: [ 
                       Shadow(
                         color: Colors.white.withOpacity(0.5),
                         blurRadius: 5,
                         offset: Offset(1,1),
                        )
                     ]
                      ),
                ), 
               ),
            ),


            title: "CRYPTO SIGNAL",
           
             ),

          

           PageViewModel(
            image: Image.asset("assets/undraw_Posts_re_ormv 1.png"),
            title: " CRYPTO NEWS",



            bodyWidget: Center( 
              child: Expanded(

                
                child: Text(
                   "Crypto News is showing latest news"+
                    "about cryptocurrency market",
                   textAlign: TextAlign.center,

                   style: TextStyle(
                     color:Colors.white,
                     shadows: [ 
                       Shadow(
                         color: Colors.white.withOpacity(0.5),
                         blurRadius: 5,
                         offset: Offset(1,1),
                        )
                     ]
                      ),
                ), 
               ),
            ),


            
             ),

            PageViewModel(
            image: Image.asset("assets/undraw_crypto_portfolio_2jy5 1.png"),
            title: "MARKET CAP",
            
            



            bodyWidget: Center( 
              child: Expanded(
                child: Text(
                   "Users can easily find market value of publicly traded outstanding shares",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     color:Colors.white,
                     shadows: [ 
                       Shadow(
                         color: Colors.white.withOpacity(0.5),
                         blurRadius: 5,
                         offset: Offset(1,1),
                        )
                     ]
                      ),
                ), 
               ),
            ),


            
             ),

           PageViewModel(
            image: Image.asset("assets/undraw_key_points_ig28 1.png"),
            title: "CRYPTO CONVERTER",


            bodyWidget: Center( 
              child: Expanded(
                child: Text(
                   "Crypto Converter helps you to convert currency values of different rates",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     color:Colors.white,
                     shadows: [ 
                       Shadow(
                         color: Colors.white.withOpacity(0.5),
                         blurRadius: 5,
                         offset: Offset(1,1),
                        )
                     ]
                      ),
                ), 
               ),
            ),


           
             ),

             
        ],
        onDone: () { 
        print("click" );
       },
        showSkipButton: true,
        showNextButton: true,
        skip: Text("SKIP" ,style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:20),),
        

        next: Icon(Icons.navigate_next ,color: Colors.white,size:20),

        done: RaisedButton(onPressed: (){ 
          Navigator.push(context, MaterialPageRoute(
            builder: (context)=>Dashboard()
          ));
        },

        child:Text('DONE' ,style: TextStyle(color:Colors.black,fontWeight:FontWeight.bold,fontSize:20),)
        ),
        
      )
      
      
      );
  }
}