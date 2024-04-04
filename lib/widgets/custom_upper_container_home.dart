import 'package:flutter/material.dart';
import 'package:tecno_notes_app/pages/upcoming_page.dart';
import 'package:tecno_notes_app/pages/favourite_page.dart';

class CustomUpperContainer extends StatelessWidget {
  CustomUpperContainer({
    super.key,
    this.icon1,
    required this.text1,
    required this.text2,
    this.icon2,
    required this.text3,
    required this.text4,
    this.icon3,
    required this.text5,
    required this.text6,
  });
  final Icon? icon1;
  final String text1;
  final String text2;
  final Icon? icon2;
  final String text3;
  final String text4;
  final Icon? icon3;
  final String text5;
  final String text6;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.grey, width: 1.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                    child: icon1 != null
                        ? Icon(
                            icon1!.icon,
                            color: Color(0xff6281D1),
                            size: icon1!.size,
                          )
                        : const SizedBox.shrink(),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          text1,
                          style: const TextStyle(
                              fontSize: 20, color: Color(0xff6281D1)),
                        ),
                      ),
                      Text(
                        text2,
                        style:
                            const TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(height: 1.0, color: Colors.grey),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return UpcomingPage();
              }));
            },
            child: Row(
              children: [
                Row(
                  children: [
                    Container(
                      child: icon2 != null
                          ? Icon(
                              icon2!.icon,
                              color: Color(0xff6281D1),
                              size: icon2!.size,
                            )
                          : const SizedBox.shrink(),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            text3,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Color(0xff6281D1),
                            ),
                          ),
                        ),
                        Text(
                          text4,
                          style:
                              const TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(height: 1.0, color: Colors.grey),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FavouritePage();
              }));
            },
            child: Row(
              children: [
                Row(
                  children: [
                    Container(
                      child: icon3 != null
                          ? Icon(
                              icon3!.icon,
                              color: Color(0xff6281D1),
                              size: icon3!.size,
                            )
                          : const SizedBox.shrink(),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            text5,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Color(0xff6281D1),
                            ),
                          ),
                        ),
                        Text(
                          text6,
                          style:
                              const TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
