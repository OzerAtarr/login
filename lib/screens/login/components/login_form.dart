import 'package:flutter/material.dart';
import 'package:login/components/rounded_button.dart';
import 'package:login/components/rounded_input.dart';
import 'package:login/components/rounded_password_input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.size,
    required this.defaultLoginSize,
  }) : super(key: key);

  final Size size;
  final double defaultLoginSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1.00,
      duration: const Duration(seconds: 2),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          width: size.width,
          height: defaultLoginSize,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'HOŞGELDİNİZ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.height/30),
              ),
              SizedBox(height: size.width / 30),
              RoundedInput(icon: Icons.mail, hint: 'Kullanıcı Adı'),
              RoundedPasswordInput(hint: 'Şifre'),
              SizedBox(height: size.width / 62.3),
              RoundedButton(title: 'Giriş Yap'),
              SizedBox(height: size.width / 62.3),
            ],
          ),
        ),
      ),
    );
  }
}
