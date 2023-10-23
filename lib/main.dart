import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.white,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch  ,
            children: [
              Text("Settings", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              SizedBox(height: 12.0,),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                  ),
                  suffixIcon: Icon(
                      CupertinoIcons.mic_fill
                  ),
                  hintText: 'Search',
                ),
              ),
              SizedBox(height: 12.0,),
              Card(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      child: Text("AY", style: TextStyle(color: Colors.white),),
                    ),
                    SizedBox(width: 30,),
                    Column(
                      children: [
                        Text("AmjadYabroudi"),
                        Text("APPLE ID, icloud, media & purchases",)
                      ],
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(

                          color: Colors.orange,
                          child: Icon(
                            CupertinoIcons.airplane,
                          ),
                        ),
                        SizedBox(width: 18,),
                        Text("Airplane mode", style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        CupertinoSwitch(
                          value: isSwitched,
                          onChanged: (bool value){
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Divider(color: Colors.grey, thickness: 1, ),

                    Row(
                      children: [
                        Container(

                          color: Colors.blue,
                          child: Icon(
                            CupertinoIcons.wifi,
                          ),
                        ),
                        SizedBox(width: 18,),
                        Text("WIFI", style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text("Toob-19976", style: TextStyle(color: Colors.grey),),

                        Icon(
                          CupertinoIcons.chevron_forward,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


