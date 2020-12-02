import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  build(context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0x1F2227),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                child: Image.asset('assets/images/background.png'),
                height: height * .50,
                width: width * .78,
              ),
              right: -width * .1,
              top: -width * .24,
            ),

            Positioned(
              left: width * .3,
              top: height * .3,
              child: Container(
                height: height * .20,
                width: width * .42,
                child: Image.asset('assets/images/logo.png'),
              ),
            ),

            Positioned(
              top: height*.50,
              child: Container(
                height: 50,
                width: width,
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("Beyond",style: TextStyle(fontFamily: 'Roboto',color: Colors.white,fontSize: 22,fontWeight: FontWeight.w700),),
                      Text("Dating",style: TextStyle(fontFamily: 'Roboto',color: Colors.white,fontSize: 22,fontWeight: FontWeight.w100),)
                    ],),
                      Padding(
                        padding: const EdgeInsets.only(top:4),
                        child: Text("The Best Dating, Friendship and Interest matching",style: TextStyle(color: Colors.pink[300],fontSize: 13),),
                      ),
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
