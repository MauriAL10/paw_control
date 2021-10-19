// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paw_control/pallete.dart';

class LoginScreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (rect) => LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: [Colors.black, Colors.transparent],
          ).createShader(rect),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/login_bg.jpg'), 
               fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.black
              , BlendMode.darken),
            )
          )
        )
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: const [
              Flexible (
                child: Center(
                child: Text(
                'PawControl',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
                ),
                ),
              ),
              TextInputField(
              icon: FontAwesomeIcons.envelope,
              hint: 'Email',
              inputType: TextInputType.emailAddress,
              inputAction: TextInputAction.next,), 
              PasswordInput(
              icon: FontAwesomeIcons.lock,
              hint: 'Password',
              inputType: TextInputType.visiblePassword,
              inputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 25,
              )
            ],
          ),
        )
      ],
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key, 
    required this.icon, 
    required this.hint, 
    required this.inputType, 
    required this.inputAction,
  }) : super(key: key);

final IconData icon;
final String hint;
final TextInputType inputType;
final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width *0.8,
        decoration: BoxDecoration(
          color: Colors.grey[500],
          borderRadius: BorderRadius.circular(16)),
          child: Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                icon,
                size: 30,
                color: kBlue),
              ),
              hintText: hint,
              hintStyle: kBodyText,

          ),
          obscureText: true,
          style: kBodyText,
          keyboardType: inputType,
          textInputAction: inputAction,
          ),
          ),
      ),
    );
  }
}

class TextInputField extends StatelessWidget {
  const TextInputField({
    Key? key, 
    required this.icon, 
    required this.hint, 
    required this.inputType, 
    required this.inputAction,
  }) : super(key: key);

final IconData icon;
final String hint;
final TextInputType inputType;
final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width *0.8,
        decoration: BoxDecoration(
          color: Colors.grey[500],
          borderRadius: BorderRadius.circular(16)),
          child: Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                icon,
                size: 30,
                color: kBlue),
              ),
              hintText: hint,
              hintStyle: kBodyText,

          ),
          style: kBodyText,
          keyboardType: inputType,
          textInputAction: inputAction,
          ),
          ),
      ),
    );
  }
}