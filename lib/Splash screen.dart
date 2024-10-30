import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goldapp/GoldApp.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key, required String title});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 5
    ),(){
      Get.to(()=>Splashscreen(title: ('String')));

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black12,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('lib/assestd/gold.jpg'),height: 200,),
          Text('Gold App',style: TextStyle(color: Colors.black,fontSize: 25),)

        ],
      ),),
    );
  }
}
