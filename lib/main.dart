import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(




        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});




  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
  return Scaffold(
    backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 400,
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:AssetImage(),
                      fit: BoxFit.fill
                      )
                  ),
                ),
                ),
                Positioned(
                  height: 350,
                  width: width + 10,
                  child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:AssetImage(),
                      fit: BoxFit.fill
                      )
                  ),
                ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[],
                Text("Login", style: TextStyle(color: Color(49, 39, 79, 1), fontWeight: FontWeight.bold, fontSize: 30),),
                SizedBox(height: 40,), 
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  )
            ),
            )
        ],

    ),
  );
  }
}


