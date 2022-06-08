

import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp ({Key? key}) : super(key: key);

  @override
Widget build(BuildContext context){
return  MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
);
}
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count =0;


  void decrement(){
    count >0 ? setState((){count--;}):count;
  }

  void increment(){
    count <20 ? setState((){count++;}):count;

  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration:const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Assets/images/images.jpeg"),
                fit: BoxFit.cover,
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Salve", style: const TextStyle(fontSize:100,backgroundColor: Colors.black38,color: Colors.white, fontWeight: FontWeight.w700),),
              SizedBox(height: 400),
              Text("$count",style: const TextStyle(fontSize: 100,color: Colors.white, fontWeight: FontWeight.w500)),
              SizedBox(height: 2),
              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: decrement,
                    style: TextButton.styleFrom(backgroundColor:Colors.white,fixedSize: const Size(100, 50),primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                    child: Text("Não",style: TextStyle(fontSize:20 ,),),),
                  SizedBox(width: 62),
                  TextButton(onPressed: increment,
                    style: TextButton.styleFrom(backgroundColor:Colors.white,fixedSize: const Size(100, 50),primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )
                    ),

                    child: Text("Salve",style: TextStyle(fontSize:20 ,),),),
                ],
              ),
            ],
          )
          ,
        )

    );
  }
}




