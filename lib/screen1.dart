import 'package:flutter/material.dart';
import 'package:hello_world/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        title: const Text("Welcome to my world"),
        backgroundColor: Colors.amber,
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        elevation: 0,
        child: const Icon(Icons.ice_skating),
        onPressed:(){
          debugPrint("Hello World!");
        }  
      ),
     drawer: SafeArea(
      child: Drawer(
      child: ListTile(
      title: const Text("Happy ending"),
      subtitle: const Text("Happy"),
      leading: const Icon(Icons.info_outline_rounded),
      onTap: (){
        print("Hi");
      },
      ), 
      ),),
      body: Column(
          children: [
            SizedBox(
        width: 500,
        height: 500,
        child: Image.asset('assets/images/image2.jpg',
        ),
            ),
            const Text('بهراد غفاری' , style: TextStyle
            (fontSize: 30.0,
            ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                 MaterialPageRoute(
                  builder: (context){
                  return const Screen2();
                },
                ),
                );
              }
            , child: const Text("کلیک کن"))
          ], 
      ));
  }
}