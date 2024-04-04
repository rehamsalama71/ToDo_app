import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomLowerContainer extends StatelessWidget {
  CustomLowerContainer(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4});

  final String text1;
  final String text2;
  final String text3;
  final String text4;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:  const EdgeInsets.all(20),
              child: Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  color: Color(0xff6281D1),
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 18,),
                    Icon(Icons.person,color: Colors.white,),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Personal',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      text1,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Container(
              height: 160,
                width: 160,
                decoration: BoxDecoration(
                  color: Color(0xff9170B0), 
                  borderRadius: BorderRadius.circular(16)
                ),
              
                child: Column(
                  children: [
                    SizedBox(height: 18,),
                    Icon(FontAwesomeIcons.pen,color: Colors.white,),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Learning',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),  SizedBox(
                      height: 10,
                    ),
                    Text(
                      text2,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
            padding: const EdgeInsets.all(20),
              child: Container(
                  height: 160,
                width: 160,
                  decoration: BoxDecoration(
                  color: Color(0xffF27C7A), 
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  children: [
                
                      SizedBox(height: 18,),
                    Icon(FontAwesomeIcons.bagShopping,color: Colors.white,),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Work',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),  SizedBox(
                      height: 10,
                    ),
                    Text(
                      text3,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Container(
                height: 160,
                width: 160,
            decoration: BoxDecoration(
                  color: Color(0xff6392BA), 
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  children: [
                      SizedBox(height: 18,),
                    Icon(FontAwesomeIcons.basketShopping,color: Colors.white,),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Shopping',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),  SizedBox(
                      height: 10,
                    ),
                    Text(
                      text4,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
