import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/utils/database/database_images.dart';
import 'package:flutter_netflix_clone/view/bottom_screen/bottom_screen.dart';
// import 'package:flutter_netflix_clone/view/home_screen/home_screen.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Container(
          width: 138,
          height: 37,
          child: Image.asset("assets/images/Netflix.png"),
        ),
        actions: [
          Image.asset(
            "assets/images/pencil.png",
            width: 18,
            height: 18,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 178,
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 75),
            child: GridView.builder(
              shrinkWrap: true,
              physics:NeverScrollableScrollPhysics(),
              itemCount: Databaseimages.databaseimages.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 140,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 25),
                itemBuilder: (context, index) => Column(
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigation(),)),
                      child: Container(
                        height: 100,
                        width:  92,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage(Databaseimages.databaseimages[index]),
                          fit: BoxFit.cover)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(Name.databasename[index],
                    style: TextStyle(color: Colors.white),),
                  ],
                ),),
          ),
          ),
          // Expanded(child: Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 100),
          //   child: Row(
          //     children: [
          //       Column(
          //         children: [
          //           SizedBox(height:50),
          //           Container(
          //             child: Image.asset("assets/images/user plus.png"),
          //           ),
          //           SizedBox(height: 20),
          //           Text("Add Profile",
          //           style: TextStyle(color: Colors.white,fontSize: 15),)
          //         ],
          //       )
          //     ],
          //   ),
          // )),
        ],
      ),
    );
  }
}
