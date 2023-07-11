import 'package:flutter/material.dart';

class Lost extends StatefulWidget {
  const Lost({Key? key}) : super(key: key);

  @override
  State<Lost> createState() => _LostState();
}

class _LostState extends State<Lost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Column(
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
                  labelText: "NEW PASSWORD",
                  hintText: "NEW PASSWORD"
              ),
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
                  hintText: "CONFIRM PASSWORD"
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
          ElevatedButton(onPressed: (){}, child: Text("register"))
        ],
      ),

    );
  }
}
