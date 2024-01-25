import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final TextInputType? keyboardType;
  final TextEditingController textController;
  final String? hintText;
  final bool isPassword;
  final IconData? prefixIcon;
  const CustomInputField({
    super.key, 
    this.keyboardType, 
    this.prefixIcon, 
    this.hintText, 
    this.isPassword = false,
    required this.textController});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withAlpha(60),
            offset: const Offset(0, 3),
            blurRadius: 3,
          )
        ]
      ),
      width: width * .85,
      padding: const EdgeInsets.only(right: 20),
      margin: const EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: textController,
        obscureText: isPassword,
        autocorrect: false, 
        keyboardType: keyboardType ?? TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon, color: Colors.indigoAccent,),
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black38)
        ),
      ),
    );
  }
}