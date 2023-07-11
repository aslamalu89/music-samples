import 'package:flutter/material.dart';
import 'package:musicapp/Loginpage.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(color: Colors.tealAccent,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  hintText: "Email"
                ),
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: " PASSWORD",
                  hintText: " PASSWORD"
                ),
                  obscureText: true,
                  validator: (value){
                    if(value==null|| value.isEmpty)
                    {return "please enter your password ";}
                    {if(value.length<6){
                      return"password must be 6 characters";}
                    }
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "CONFIRM PASSWORD",
                  hintText: "CONFIRM PASSWORD",
                ),
                  obscureText: true,
                  validator: (value){
                    if(value==null|| value.isEmpty)
                    {return "please enter your password ";}
                    {if(value.length<6){
                      return"password must be 6 characters";}
                    }
                  }
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
            }, child: Text("Register"))
          ],
        ),
      ),
    );
  }
}
