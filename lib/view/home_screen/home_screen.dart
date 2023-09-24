

import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/view/home_screen/home_screen_widgets/continue_scroll_list.dart';
import 'package:flutter_netflix_clone/view/home_screen/home_screen_widgets/preview_scroll_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 360,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("assets/images/Rectangle 26.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/logos_netflix-icon.png",width: 60,height: 65,),
                      Text(
                        "TV Shows",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                      Text(
                        "movies",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                      Text(
                        "My List",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),


          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    child: Image.asset("assets/images/plus-outlined.png"),
                  ),
                  Text(
                    "My List",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Container(
                width: 110,
                height: 45,
                
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: const Color(0xffC4C4C4),),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/Vector.png",width: 16,height: 20,),
                    SizedBox(width: 8,),
                    Text("Play",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25,color: Colors.black),)
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    child: Image.asset("assets/images/feather_info.png"),
                  ),
                  Text(
                    "movies",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),


          //
          Scrollwidget(),
          SizedBox(height: 15),
          ListView.builder(
            itemCount:8,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => SquareScroll(),)      
        ],
      ),
    );
  }
}
