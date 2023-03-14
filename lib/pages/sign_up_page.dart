// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:life_cycle/life_c/home_page.dart';
import 'package:life_cycle/pages/sign_in_page.dart';
import 'package:life_cycle/service/user_state.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  final nameCtl = TextEditingController();
  final lastNameCtl = TextEditingController();
  final passwordCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUp Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              controller: nameCtl,
            ),
            TextFormField(
              controller: lastNameCtl,
            ),
            TextFormField(
              controller: passwordCtl,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInPage(),
                  ),
                );
              },
              child: Text('Go to Sign In Page'),
            ),
            ElevatedButton(
              onPressed: () async {
                await service.signUp(
                  name: nameCtl.text,
                  lastName: lastNameCtl.text,
                  password: passwordCtl.text,
                );
                await Navigator.pushAndRemoveUntil<void>(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                  (route) => false,
                );
              },
              child: Text('SignUpPage'),
            ),
          ],
        ),
      ),
    );
  }
}
