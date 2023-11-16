import 'package:flutter/material.dart';
import 'package:myreview/viewmodel/home_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeMV data  =HomeMV();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title:Text(data.titleAppBar) ,
  centerTitle: true,
),
body:Column(
  mainAxisAlignment: MainAxisAlignment.center,
    children: [
       Text("${data.getcounter()}"),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: (){
            setState(() {
              data.incrementcounter();
            });
          }, icon: const Icon(Icons.add)),
          IconButton(onPressed: (){
            setState(() {
              data.resetcounter();
            });
          },  icon:const Icon(Icons.restart_alt)),
          IconButton(onPressed: (){
            setState(() {
              data.decrementcounter();
            });
          },  icon:const Icon(Icons.minimize),alignment: Alignment.topCenter,),
        ],
      )
    ],
  )


    );
  }
}