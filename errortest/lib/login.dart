import 'package:errortest/product/view/geidvieww.dart';
import 'package:errortest/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Here"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Enter your e-mail",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)))),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Enter your password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)))),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx1) {
                  return Gridview();
                }));
              },
              child: const Text('LOGIN')),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx1) {
                  return const Signup();
                }));
              },
              child: const Text('Sign Up?'))
        ],
      ),
    );
  }
}
