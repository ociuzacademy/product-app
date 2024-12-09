import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ui_demoo/starting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    checklogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      children: [
        SizedBox(
            height: 500,
            width: 600,
            child: Lottie.asset('android/assets/animation/ani.json')),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'Powered By\n  ASWIN',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        )
      ],
    )));
  }

  Future<void> checklogin() async {
    await Future.delayed(const Duration(seconds: 1));

    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx1) {
      return const Startingpage();
    }));
  }
}
