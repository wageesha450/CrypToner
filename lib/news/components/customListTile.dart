
import 'package:flutter/material.dart';
import 'package:freshproject/news/model/article_model.dart';
import 'package:freshproject/news/pages/articles_details_page.dart';

Widget customListTile(Article article, BuildContext context) {
  return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>ArticlePage(
            article:article,
            )
            )
            );
      },
      child: Container(
      margin:EdgeInsets.all(12.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.indigo[900],
        borderRadius: BorderRadius.circular(18.0),
        boxShadow: [ 
          BoxShadow( 
            color: Colors.black12,
            blurRadius: 3.0,
          )
        ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            Container( 
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage( 
                 // backgroundImage: (profile.imgUrl == null) ? AssetImage('images/user-avatar.png') : NetworkImage(profile.imgUrl)
                  // change made here for error
                  image:(article.urlToImage == null) ? Text("No image") :  NetworkImage(article.urlToImage),
                  fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            SizedBox(height: 8.0,),
            Container( 
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration( 
                color: Colors.orange,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(article.source.name, style: TextStyle(color: Colors.black,),),
            ),
          SizedBox(height: 8.0,),
          Text(article.title,
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,
          fontSize: 16.0,
          ),
          
          )
          ],
          ),
    ),
  );
}
