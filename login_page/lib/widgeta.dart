// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TextFieldIcon extends StatelessWidget {
  const TextFieldIcon({required this.icon});

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: const EdgeInsets.all(11),
      decoration: BoxDecoration(
        color: const Color(0xffDCDADA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: icon,
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          content: const Text(
            'Log In',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          backgroundColor: Colors.amber,
        ));
      },
      child: Container(
        height: 45,
        width: MediaQuery.sizeOf(context).width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xff04D2FF),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.43),
                  offset: const Offset(0, 4),
                  blurRadius: 5)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Log in',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            // SizedBox(width: 5),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 11.0, horizontal: 4),
              child: SvgPicture.asset('asset/image/enter.svg'),
            )
          ],
        ),
      ),
    );
  }
}

class OrWidget extends StatelessWidget {
  const OrWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(height: 2, color: Colors.black),
        ),
        const SizedBox(width: 16),
        const Text('or', style: TextStyle(fontSize: 22)),
        const SizedBox(width: 16),
        Expanded(
          child: Container(height: 2, color: Colors.black),
        ),
      ],
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: MediaQuery.sizeOf(context).width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.43),
                  offset: const Offset(0, 4),
                  blurRadius: 5)
            ],
            border: Border.all(color: const Color(0xff039DC1), width: 5),
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xff026D8E)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            // SizedBox(width: 5),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 11.0, horizontal: 4),
              child: SvgPicture.asset('asset/image/enter.svg'),
            )
          ],
        ),
      ),
    );
  }
}
