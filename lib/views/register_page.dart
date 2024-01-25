import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class RegisterPage extends StatelessWidget {
   
  const RegisterPage({Key? key}) : super(key: key);
  
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
                Logo(text: "Registro",),
            
                _Form(),
            
                Label(
                  greyText: "¿Ya tiene una cuenta?",
                  clickableText: "¡Ingrese ahora!",
                  route: "login",
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
  final usernameCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInputField(
          keyboardType: TextInputType.name,
          prefixIcon: Icons.person_outline_outlined,
          hintText: "Nombre",
          textController: usernameCtr,
        ),

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
          text: "Crear Cuenta",
          callBack: () {
            print(emailCtr.text);
            print(passwordCtr.text);
          },
        )
      ]
    );
  }
}

