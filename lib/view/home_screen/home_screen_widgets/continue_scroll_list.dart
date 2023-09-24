import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/utils/database/database_images.dart';

class SquareScroll extends StatelessWidget {
  const SquareScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text("Continue Watching for Emenalo",style: TextStyle(
                fontSize: 20.921,color: Colors.white,
              ),)
            ],
          ),
          SizedBox(height: 15,),
          Container(
            height: 160,
            child: ListView.builder(
              itemCount: SquareImages.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container( 
                  height: 161,
                  width: 103,
                  child: Image.asset(SquareImages[index]),
                ),
                
              ),),
          ),
           SizedBox(height: 15,),
        ],
      ),
    );
  }
}