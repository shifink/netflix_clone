import 'package:flutter/material.dart';

import '../../../utils/database/database_images.dart';


class Scrollwidget extends StatelessWidget {
  const Scrollwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text("Previews",style: TextStyle(
                fontSize: 26.748,color: Colors.white,fontWeight: FontWeight.bold
              ),)
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: CircleImages.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SizedBox
              (height: 110,width: 110,
                child: CircleAvatar(
                  backgroundImage: AssetImage(CircleImages[index]),
                )),),
          )
        ],
      ),
    );
  }
}