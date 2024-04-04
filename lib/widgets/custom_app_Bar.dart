import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.icon});
  final String text;
  final double fontSize;
  final Icon? icon;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          Container(
            child: icon != null
                ? Icon(
                    icon!.icon,
                    color: Colors.black,
                    size: icon!.size,
                  )
                : const SizedBox.shrink(),
          ),
          SizedBox(width: 10,),
          Container(
            width: 40,
            height: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/photo_2024-04-03_04-51-21.jpg'),
            ),
          )
        ],
      ),
    );
  }
}
