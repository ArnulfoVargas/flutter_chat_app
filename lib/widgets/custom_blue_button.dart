import 'package:flutter/material.dart';

class CustomBlueButton extends StatelessWidget {
  final void Function()? callBack;
  final String text;
  const CustomBlueButton({
    super.key, 
    this.callBack, 
    required this.text,
  });


  @override
  Widget build(BuildContext context) {
  final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * .85,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> state) {
            if (state.contains(MaterialState.pressed)) {
              return 1;
            }
            return 3.5;
          }),
          shape: MaterialStateProperty.all(const StadiumBorder()),
          backgroundColor: MaterialStateProperty.all(callBack != null ? Colors.blueAccent : Colors.grey),
        ),
        onPressed: callBack, 
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 9.5),
          child: Text(text,
            textAlign: TextAlign.center, 
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}