import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/utils/database/database_images.dart';
import 'package:flutter_netflix_clone/view/coming_soon_screen/scrol_widget/scrol_widget.dart';

class ComingSoonScreen extends StatefulWidget {
  const ComingSoonScreen({super.key});

  @override
  State<ComingSoonScreen> createState() => _ComingSoonScreenState();
}

class _ComingSoonScreenState extends State<ComingSoonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 13,
                      backgroundColor: Color(0xffF50914),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Notifications",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.91,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                        height: 70,
                        color: Color(0xff424242),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 120,
                                height: 55,
                                child: Image.asset(ComingSoonimage[index]),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 150,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    "New Arrival",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.72,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Peaky Blinders",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.72,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Nov 6",
                                    style: TextStyle(
                                        color: Color(0x7AFFFFFF),
                                        fontSize: 10.51,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(),
                  itemCount: ComingSoonimage.length),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 195,
                child: Image.asset("assets/images/comingsoon_image.png"),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      child: Column(
                    children: [
                      Icon(
                        Icons.notifications,
                        size: 30,
                        color: Colors.white,
                      ),
                      Text(
                        "Remind Me",
                        style: TextStyle(fontSize: 11.13, 
                        color: Colors.white,
                        fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                  )
                  ),
                  SizedBox(width: 50,),
                   Container(
                      child: Column(
                    children: [
                      Icon(
                        Icons.share,
                        size: 30,
                        color: Colors.white,
                      ),
                      Text(
                        "Share",
                        style: TextStyle(fontSize: 11.13, 
                        color: Colors.white,
                        fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                  )
                  ),
                  SizedBox(width: 20,),
                ],
              ),
              SizedBox(height: 20,),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ScrollWidget(),)
            ],
          ),
        ),
      ),
    );
  }
}
