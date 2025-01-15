import "package:flutter/material.dart";
import "package:hello_world/screen1.dart";

void main(){
  runApp((const MyApp()));
}



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily:'Iranian Sans' ),
      debugShowCheckedModeBanner: false,
     home: const Screen1(),
      );
    }
}
