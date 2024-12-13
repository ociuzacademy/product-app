import 'package:errortest/product/view/geidvieww.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup Here"),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                hintText: 'Enter your username ',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)))),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Enter your e-mail",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)))),
          ),
          SizedBox(
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
              child: const Text('SIGNUP'))
        ],
      ),
    );
  }
}
