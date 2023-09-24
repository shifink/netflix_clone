import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/utils/database/database_images.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xffC4C4C4),
                      size: 25,
                    ),
                    suffixIcon: Icon(Icons.mic, color: Color(0xffC4C4C4)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    hintText: "Search for a show, movie, genre, e.t.c.",
                    hintStyle: TextStyle(color: Color(0xffC4C4C4)),
                    filled: true,
                    fillColor: Color(0xff424242)),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    "Top Searches",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.75,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                        height: 80,
                        decoration: BoxDecoration(color: Color(0xff424242)),
                        child: Row(  
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,                      
                          children: [
                            Container(
                              height: 80,
                              width: 146,
                              child: Image.asset(SearchImages[index]),
                            ),
                         Container(
                              width: 100,
                              child: Text(
                              SearchName[index],
                              style: TextStyle(
                                  fontSize: 14.72,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            ),SizedBox(width: 10,),
                            Icon(Icons.play_circle_outline,color: Colors.white,size: 30,),
                            SizedBox(width:2,),
                          ],
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: SearchImages.length),
            ],
          ),
        ),
      ),
    );
  }
}
