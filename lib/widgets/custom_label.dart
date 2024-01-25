import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String greyText;
  final String clickableText;
  final String route;
  const Label({super.key, required this.greyText, required this.clickableText, required this.route});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(greyText,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),  
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, route);
            },
            child: Text(clickableText,
              style: const TextStyle(
                color: Colors.indigoAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ]
      ),
    );
  }
}