import 'package:flutter/material.dart';
// MaterialApp | Scaffold | Text | Center | Image | Icon 62
// Scaffold | Column | Row | Dialog | bottom sheet | Snackbar 63
// Buttons(ElevatedButton, TextButton, IconButton, GestureDetector, InkWell)
// |  TextField | Container | Padding 71
// Navigation - push, pop, replace, removeUntil (without named navigation) 81


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Profile',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),),
              SizedBox(height: 30,),
              ClipRRect(
                borderRadius: BorderRadius.circular(50), // Image border
                child: SizedBox.fromSize(
                  size: Size.fromRadius(48), // Image radius
                  child: Image.asset('images/model.jpg',width: 300, height: 300, fit: BoxFit.cover),
                ),
              ),

              Text('Adam Smith',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
              Text('helloprofile@gmail.com',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,),),
              SizedBox(height: 30,),
              Center(child: Text('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.', textAlign: TextAlign.center,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,),)),


            ],
          ),
        ),
      ),
    );
  }
}

