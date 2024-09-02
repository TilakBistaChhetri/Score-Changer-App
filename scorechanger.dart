import 'package:flutter/material.dart';
void main()
{
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Score App",
      home:ScoreHome(),

    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number=0;

  void increaseNumber(){
    setState((){
      number++;
    });
  }

  void decreaseNumber(){
    setState(() {
      number--;
      
    });
  }

void resetNumber(){
  setState(() {
    number=0;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle:true,
        title:Text("Score Changer", style:TextStyle(fontSize:25,),),
      ) ,
      floatingActionButton:FloatingActionButton(child:Icon(Icons.restore_outlined),
      onPressed:resetNumber,
      ),
      body:Column(
        children: [
          SizedBox(height:19),

          Center(child:Text("Score is",style:TextStyle(fontSize:25, color:Colors.green, fontWeight:FontWeight.bold),
          )),
            SizedBox(height:10),
             
             Center(child:Text(number.toString(), style:TextStyle(fontSize:120,color:Colors.green,fontWeight:FontWeight.bold),
             )),
             Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              children:[
                ElevatedButton(child:Text('Increase',style:TextStyle(color:Colors.blue),),onPressed:increaseNumber,
                ),
                      SizedBox(width:20),
                      ElevatedButton(child:Text('Decrease',style:TextStyle(color:Colors.blue),),onPressed: decreaseNumber,
                      ),
              ]
             )

        ],)


      );
  }
}