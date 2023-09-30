import 'package:flutter/material.dart';

class swiget extends StatelessWidget {
  const swiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10),
                color: Color(0xFF2CB742),
                image: DecorationImage(
                    image: AssetImage("assets/images/logos_whatsapp.png"))),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10),
                color: Color(0xFF395185),
                image: DecorationImage(
                    image: AssetImage("assets/images/logos_facebook.png"))),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10),
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/images/Gmail-logo 1.png"))),
          ),
          Column(
            children: [
              Icon(Icons.more_horiz,color: Colors.white,),
              Text("More",style: TextStyle(color: Colors.white),)
            ],
          )
        ],
      ),
    );
  }
}
