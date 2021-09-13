import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:paradox/models/youtube_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [

            //first element
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Home',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12),),
                  Text("Feature",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12),),
                  Text("Downloads",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12),),
                  Text("Career",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12),),
                  Text("Pricetag",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12),),
                ],
              ),
            ),

            //2nd element youtube video
                  YoutubePlayerDemo(),
            SizedBox(height: 6),

            //3rd element
            Container(
                  height: 80,
                  child: Stack(
                    children: [
                    Image.asset('assets/original.jpg',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,),
                      Container(
                        height: 80,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white38
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 7),
                              child: Text('Building the future',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),))),
                    ] ),
                ),

            //4th element
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 15),
              child: Column(
                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 130,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset('assets/work culture.png',
                                width: 150,
                                fit: BoxFit.cover,))),
                      SizedBox(width: 15),

                      Column(
                        children: [
                          Text("Features",style: TextStyle(fontSize:28,fontWeight: FontWeight.bold,letterSpacing: 1),),
                          SizedBox(height: 10,),

                          RichText(
                            text: TextSpan(
                                text: "Ought",style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold,fontSize: 30,letterSpacing: 1.2),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:" to",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 28,letterSpacing: 1.2)
                                  ),
                                ]
                            ),
                          ),
                          SizedBox(height: 10,),

                          Text("Partake",style: TextStyle(fontSize:28,fontWeight: FontWeight.bold,letterSpacing: 1),),
                        ],
                      ),
                      // SizedBox(height: 10,),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Container(
                              height: 130,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets/1542298796.jpg',
                                    width: 150,
                                    fit: BoxFit.cover,))),
                        SizedBox(width: 15),

                        Container(
                            height: 130,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('assets/earth.png',
                                  width: 150,
                                  fit: BoxFit.cover,))),],
                    ),
                  ),
                  SizedBox(height: 30),

                   //5th element
                  Container(
                    height: 300,
                    child: Stack(
                        children: [
                          Image.asset('assets/nature.jpg',fit: BoxFit.contain,),
                          Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Padding(
                                padding: EdgeInsets.only(top:10),
                                child: Container(
                                  height: 100,
                                  width: 220,
                                  decoration: BoxDecoration(
                                      color: Colors.white38
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 10),
                                      child: Column(
                                        children:[
                                        Text('Every inspiration from nature',textAlign: TextAlign.center,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                                          SizedBox(height: 10,),

                                          Text('Get started using our services with a 30-day free trial',style: TextStyle(fontSize: 7),),
                                          SizedBox(height: 20,),

                                          GestureDetector(
                                            onTap: (){},
                                            child: Container(
                                              height: 10,
                                              width: 50,
                                              margin: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(2),
                                              color: Colors.black,
                                            ),
                                              child: Text('Try it now', textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 7),),

                                            ),
                                          ),

                                        ])
                                  ),
                              )
                                ),

                            ]),
                        ]),
                  ),
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
  }

