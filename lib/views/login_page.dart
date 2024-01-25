import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class LoginPage extends StatelessWidget {
   
  const LoginPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .95,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(text: "Messenger"),
            
                _Form(),
            
                Label(
                  greyText: "¿No tiene una cuenta?",
                  clickableText: "¡Cree una ahora!",
                  route: "register",
                ),
            
                Text("Términos y condiciones de uso",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form();

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtr = TextEditingController();
  final passwordCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInputField(
          keyboardType: TextInputType.emailAddress,
          prefixIcon: Icons.alternate_email_rounded,
          hintText: "Correo",
          textController: emailCtr,
        ),

        CustomInputField(
          keyboardType: TextInputType.visiblePassword,
          prefixIcon: Icons.lock_outline,
          hintText: "Constraseña",
          textController: passwordCtr,
          isPassword: true,
        ),

        CustomBlueButton(
          text: "Ingresar",
          callBack: () {
            print(emailCtr.text);
            print(passwordCtr.text);
          },
        )
      ]
    );
  }
}

