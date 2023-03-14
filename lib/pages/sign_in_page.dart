import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:life_cycle/service/user_state.dart';

import 'home__page.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
  final nameCtl = TextEditingController();
  final lastNameCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignInPage'),
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
            ElevatedButton(
              onPressed: () async {
                final isTrue = await service.signIn(
                  name: nameCtl.text,
                  password: lastNameCtl.text,
                );
                if (isTrue) {
                  // ignore: use_build_context_synchronously
                  await Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                    (route) => false,
                  );
                } else {
                  log('login je passwor tuura emes ');
                }
              },
              child: Text('SignInPage'),
            )
          ],
        ),
      ),
    );
  }
}
