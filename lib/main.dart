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
          child: SingleChildScrollView(
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
                      Divider(color: Colors.grey, thickness: 1, ),

                      Row(
                        children: [
                          Container(

                            color: Colors.blue,
                            child: Icon(
                              CupertinoIcons.bluetooth,
                            ),
                          ),
                          SizedBox(width: 18,),
                          Text("Blutooth", style: TextStyle(fontWeight: FontWeight.bold),),
                          Spacer(),
                          Text("On", style: TextStyle(color: Colors.grey),),

                          Icon(
                            CupertinoIcons.chevron_forward,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey, thickness: 1, ),

                      Row(
                        children: [
                          Container(

                            color: Colors.green,
                            child: Icon(
                              CupertinoIcons.personalhotspot,
                            ),
                          ),
                          SizedBox(width: 18,),
                          Text("mobile data", style: TextStyle(fontWeight: FontWeight.bold),),
                          Spacer(),
                          Text("On", style: TextStyle(color: Colors.grey),),

                          Icon(
                            CupertinoIcons.chevron_forward,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(

                            color: Colors.red,
                            child: Icon(
                              CupertinoIcons.bell_fill,
                            ),
                          ),
                          SizedBox(width: 18,),
                          Text("Notification", style: TextStyle(fontWeight: FontWeight.bold),),
                          Spacer(),
                          Icon(
                            CupertinoIcons.chevron_forward,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey, thickness: 1, ),
                      Row(
                        children: [
                          Container(

                            color: Colors.pink,
                            child: Icon(
                              CupertinoIcons.volume_up,
                            ),
                          ),
                          SizedBox(width: 18,),
                          Text("Sounds", style: TextStyle(fontWeight: FontWeight.bold),),
                          Spacer(),
                          Icon(
                            CupertinoIcons.chevron_forward,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey, thickness: 1, ),
                      Row(
                        children: [
                          Container(

                            color: Colors.deepPurpleAccent,
                            child: Icon(
                              CupertinoIcons.moon_fill,
                            ),
                          ),
                          SizedBox(width: 18,),
                          Text("Focus", style: TextStyle(fontWeight: FontWeight.bold),),
                          Spacer(),
                          Icon(
                            CupertinoIcons.chevron_forward,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey, thickness: 1, ),
                      Row(
                        children: [
                          Container(

                            color: Colors.purple,
                            child: Icon(
                              CupertinoIcons.hourglass,
                            ),
                          ),
                          SizedBox(width: 18,),
                          Text("Scrreen Time", style: TextStyle(fontWeight: FontWeight.bold),),
                          Spacer(),
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
      ),
    );
  }
}


