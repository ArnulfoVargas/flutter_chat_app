import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String text;
  const Logo({super.key, required this.text});

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        width: width * .55,
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            const Image(image: AssetImage("assets/tag-logo.png")),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(text, style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
                color: Colors.grey
              ),),
            )
          ],
        ),
      ),
    );
  }
}