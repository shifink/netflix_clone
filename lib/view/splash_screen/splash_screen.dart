import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/view/user_name_screen/user_name_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => UserNameScreen(),
        )));
  }

  // bool isLoading=true;
  @override
  Widget build(BuildContext context) {
    return 
    // isLoading == true ? Center(child: CircularProgressIndicator(
    // )) : 
    Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 207,
              height: 56,
              child: Image.asset("assets/images/Netflix.png"),
            ),
            SizedBox(height: 50,),
            CircularProgressIndicator(
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
