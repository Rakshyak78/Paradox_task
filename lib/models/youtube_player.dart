import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerDemo extends StatefulWidget {

  @override
  _YoutubePlayerDemoState createState() => _YoutubePlayerDemoState();
}

class _YoutubePlayerDemoState extends State<YoutubePlayerDemo> {

  late YoutubePlayerController _controller;

 final String url = "7Q6zUQaEzfA";


   @override
   void initState() {
     runYoutubePlayer();
     super.initState();
   }

   void runYoutubePlayer(){
     _controller =YoutubePlayerController(
       initialVideoId: url,
       flags: YoutubePlayerFlags(
         enableCaption: false,
         isLive: false,
         autoPlay: true,
       )
     );
   }


  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

     return YoutubePlayerBuilder(
       player: YoutubePlayer(
         controller: _controller,
       ),
       builder: (context, player){
         return Padding(
           padding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
           child: Column(
             children:[
               Container(
                 child: player,
                 height: 200,
                 width: 500,
                 decoration: BoxDecoration(
                   color: Colors.blue,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 // child: ClipRRect(
                 //     borderRadius: BorderRadius.circular(10),
                 //     child: Image.asset('assets/earth.png',fit: BoxFit.cover,)),
               ),
             ]
           ),
         );
       },
     );
  }
}
