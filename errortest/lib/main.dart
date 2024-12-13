import 'package:errortest/login.dart';
import 'package:errortest/startingimage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
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
        const SizedBox(
          height: 130,
        ),
        SizedBox(
            height: 500,
            width: 600,
            child: Lottie.asset('android/assets/animations/animation.json')),
        const SizedBox(
          height: 50,
        ),
        const Text(
          'Powered By\n  NASHID',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        )
      ],
    )));
  }

  Future<void> checklogin() async {
    await Future.delayed(const Duration(seconds: 1));

    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx1) {
      return const Login();
    }));
  }
}