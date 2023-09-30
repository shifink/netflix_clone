import 'package:flutter/material.dart';

class ScrollWidget extends StatelessWidget {
  const ScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                      "Season 1 Coming December 14",
                      style: TextStyle(fontSize: 11.4, color: Color(0xD4FFFFFF),fontWeight: FontWeight.w400),
                    ),SizedBox(height: 10,),
                    Text(
                      "Castle & Castle",
                      style: TextStyle(fontSize: 18.66, color: Color(0xD4FFFFFF),fontWeight: FontWeight.w700),
                    ),SizedBox(height: 10,),
                    SizedBox(
                      width: 370,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.",
                        style: TextStyle(fontSize: 11.14, color: Color(0xD4FFFFFF),fontWeight: FontWeight.w700),
                      ),
                    ),SizedBox(height: 10,),
                    ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 200,
          child: Image(image:AssetImage("assets/images/comingsoon_image 2.png")),
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}
