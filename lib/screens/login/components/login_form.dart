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
          width: size.width,
          height: defaultLoginSize,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'HOŞGELDİNİZ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(height: 40),
              RoundedInput(icon: Icons.mail, hint: 'Kullanıcı Adı'),
              RoundedPasswordInput(hint: 'Şifre'),
              SizedBox(height: 10),
              RoundedButton(title: 'Giriş Yap'),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
