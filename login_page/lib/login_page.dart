import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/widgeta.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff026D8E),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 80),
              Image.asset('asset/image/logo.png', width: 110),
              const SizedBox(height: 50),
              const Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 25),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'example@email.com',
                  prefixIcon: TextFieldIcon(
                      icon: SvgPicture.asset('asset/image/email.svg')),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  prefixIcon: TextFieldIcon(
                      icon: SvgPicture.asset('asset/image/lock.svg')),
                ),
              ),
              const SizedBox(height: 25),
              const LoginButton(),
              const SizedBox(height: 25),
              const Text(
                'Forgot Password?',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xff020101),
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(height: 25),
              const OrWidget(),
              const SizedBox(height: 25),
              const SignUpButton()
            ],
          ),
        ),
      ),
    );
  }
}
