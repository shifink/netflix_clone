import 'package:flutter/material.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

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
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Smart Downloads",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Introducing Downloads For You",
                        style: TextStyle(
                            fontSize: 19.63,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus
bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,
id ut ipsum aliquam  enim non posuere pulvinar diam.""",
                        style: TextStyle(
                            fontSize: 10.78,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                  child: CircleAvatar(
                radius: 114,
                backgroundColor: Color(0xff424242),
              )),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: 353,
                  height: 50,
                  color: Color(0xff0071EB),
                  child: Center(
                    child: Text(
                      "SETUP",
                      style: TextStyle(
                          fontSize: 13.86,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Container(
                  width: 239,
                  height: 33,
                  color: Color(0xff424242),
                  child: Center(
                    child: Text(
                        "Find Something to Download",
                        style: TextStyle(
                            fontSize: 16.71,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
