import 'package:flutter/material.dart';
import 'package:paradox/models/gridtile.dart';

class GridTileView extends StatefulWidget {
  const GridTileView({Key? key}) : super(key: key);

  @override
  _GridTileViewState createState() => _GridTileViewState();
}

class _GridTileViewState extends State<GridTileView> {
  List <GridTileImage> gridtileImage =[
    
   GridTileImage(imageUrl:"assets/work culture.png" ),
    
    GridTileImage(imageUrl: "asssets/1542298796.jpg"),
    
    GridTileImage(imageUrl: "assets/earth.png")
    
  ]; 
  
  
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
