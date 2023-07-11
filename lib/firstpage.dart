
import 'package:flutter/material.dart';
import 'package:musicapp/Loginpage.dart';
import 'package:musicapp/registerpage.dart';

class MyImage extends StatefulWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  final String imageUrl =
      "https://cdn-icons-png.flaticon.com/512/4787/4787623.png";
  final String imageUrl1 =
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoqARMS36mmp0kn4FlN3JkDYfgZBKdRaMvCrzNszCu&s";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Center(
        child: Container(height: 1000,width: 1000,
          color: Colors.tealAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.contain,height: 100,width: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(" WELCOME MUSIC APP",
                  style: TextStyle(fontStyle: FontStyle.italic),),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Loginpage()));

                }, child: Text("LOGIN")),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Register()));
                }, child: Text("REGISTER")),
              ),
              Text("or login with Id touch"),
              Container(
                color: Colors.tealAccent,
                child: Image.network(
                  imageUrl1,
                  fit: BoxFit.contain,height: 100 ,width: 100,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
