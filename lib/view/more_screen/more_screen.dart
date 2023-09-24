import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/utils/database/database_images.dart';

class Menuscreen extends StatelessWidget {
  const Menuscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Databaseimages.databaseimages.length,
                    itemBuilder: (context, index) => SizedBox(
                      child: Container(
                        child:
                            Image.asset(Databaseimages.databaseimages[index]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/pencil.png"),
                  ),
                  Text(
                    "Manage Profiles",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Container(
                height: 250,
                color: Color(0xff1A1A1A),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.message,
                            size: 24,
                            color: Colors.white,
                          ),SizedBox(width: 5,),
                          Text(
                            "Tell friends about Netflix.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19.63,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),SizedBox(height: 10,),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                            "Lorem ipsum dolor sit amet,consectetur adipiscing elit.Sit quam dui,vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                            style: TextStyle(color: Colors.white,fontSize: 10.78),),
                      ),SizedBox(height: 10,),
                      Text(
                            "Terms & Conditions",
                            style: TextStyle(color: Color(0xFFC4C4C4),fontSize: 10.78,decoration: TextDecoration.underline),),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.black
                              ),
                            )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
